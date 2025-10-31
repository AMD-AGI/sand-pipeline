import asyncio  
import httpx  
import json
import torch
import torch.nn.functional as F
  
# --- Configuration ---  
EMBEDDINGS_URL = "http://localhost:8123/embeddings"  
MODEL_NAME = "Alibaba-NLP/gte-Qwen2-7B-instruct"  
MAX_CONCURRENT_TASKS = 100  # <--- Set your desired limit here  
  
# --- Input Data (same as before) ---  
queries_and_docs = [  
    # ... (your list of queries and docs) ...  
     {  
        "query": "What is the python package infinity_emb?",  
        "documents": [  
            "This is a document not related to the python package infinity_emb, hence...",  
            "Paris is in France!",  
            "infinity_emb is a package for sentence embeddings and rerankings using transformer models in Python!"  
        ]  
    },  
    # {  
    #     "query": "Where is Munich?",  
    #     "documents": [  
    #         "Munich is the capital of Bavaria.",  
    #         "The Oktoberfest takes place in Munich.",  
    #         "Berlin is the capital of Germany.",  
    #         "Munich is in Germany."  
    #     ]  
    # },  
    # {  
    #     "query": "What are good async libraries in Python?",  
    #     "documents": [  
    #         "The requests library is popular for synchronous HTTP.",  
    #         "asyncio is the foundation for async programming in Python.",  
    #         "aiohttp and httpx are excellent choices for async HTTP clients.",  
    #         "Flask is a micro web framework."  
    #     ]  
    # }  
]  

def processResults(results: dict):
    # print(len(results["data"]))
    question_embedding = torch.tensor([results["data"][0]["embedding"]])
    document_embeddings = torch.tensor([record["embedding"] for record in results["data"]][1:])
    q_norm = F.normalize(question_embedding, p=2, dim=1)
    doc_norm = F.normalize(document_embeddings, p=2, dim=1)
    similarity_scores = torch.mm(q_norm, doc_norm.T)
    similaity_matrix = similarity_scores.squeeze()
    index = torch.argmax(similaity_matrix).item()
    if similaity_matrix.ndim == 0:
        relevance_score = similaity_matrix.item()
    else:
        relevance_score = similaity_matrix[index].item()

    return {'index': index, 'relevance_score': round(relevance_score,2)}
    
  
# --- Asynchronous Function to Rerank a Single Query (Modified for Semaphore) ---  
async def embedding_single_with_semaphore(  
    client: httpx.AsyncClient,  
    query: str,  
    documents: list[str],  
    semaphore: asyncio.Semaphore  
) -> dict | None:  
    """Sends a single rerank request asynchronously, acquiring semaphore first."""  
    # Wait here if the semaphore count is at max capacity  
    async with semaphore:  
        # Once acquired, proceed with the request  
        print(f"Acquired semaphore, sending request for query: '{query[:30]}...'")  
        payload = {  
            "model": MODEL_NAME,  
            "input": [query,] + documents            
        }  
        try:  
            response = await client.post(EMBEDDINGS_URL, json=payload, timeout=30.0)  
            response.raise_for_status()  
            print(f"Received response for query: '{query[:30]}...'")  
            return response.json()  
        except httpx.RequestError as exc:  
            print(f"An error occurred while requesting {exc.request.url!r}: {exc}")  
            return None  
        except httpx.HTTPStatusError as exc:  
            print(f"Error response {exc.response.status_code} while requesting {exc.request.url!r}: {exc.response.text}")  
            return None  
        # The semaphore is automatically released when exiting the 'async with' block  
  
# --- Main Asynchronous Function to Run All Reranks Concurrently ---  
async def run_all_embeddings():  
    """Creates and runs rerank tasks concurrently, limited by a semaphore."""  
    # Create a semaphore that allows up to MAX_CONCURRENT_TASKS concurrent operations  
    semaphore = asyncio.Semaphore(MAX_CONCURRENT_TASKS)  
  
    # Use default httpx limits or configure them if needed (e.g., if MAX_CONCURRENT_TASKS > 100)  
    async with httpx.AsyncClient() as client:  
        tasks = []  
        for item in queries_and_docs:  
            # Pass the semaphore to the task function  
            task = asyncio.create_task(  
                embedding_single_with_semaphore(  
                    client, item["query"], item["documents"], semaphore  
                )  
            )  
            tasks.append(task)  
  
        print(f"\nRunning up to {MAX_CONCURRENT_TASKS} rerank tasks concurrently (Semaphore limit)...")  
        results = await asyncio.gather(*tasks)  
        print("\n--- All Rerank Requests Completed ---")  
  
        # Process results (same as before)  
        results_to_save = []
        for i, result in enumerate(results):  
            original_query = queries_and_docs[i]["query"]  
            if result:
                print(f"Results for {original_query[:30]}...")
                
                result = processResults(result)
                index = int(result["index"])
                relevant_question = queries_and_docs[i]["documents"][index]
                relevant_question_link = queries_and_docs[i]["links"][index]
                relevance_score = result["relevance_score"]
                record = {
                    'original_question': original_query,
                    'relevant_question': relevant_question,
                    'relevant_question_link': relevant_question_link,
                    'relevance_score': relevance_score
                }
                results_to_save.append(record)
            else:  
                print(f"\nFailed to get result for Query: '{original_query}'")  

        return results_to_save


def build_queries_and_docs(web_results, skip_hf=False):
    if isinstance(web_results, str):
        ## assuming string is jsonl path
        data = []
        with open(web_results, "r") as f:
            for line in f:
                record = json.loads(line.strip())
                # if "A grasshopper starts at vertex" in record["question"]:
                data.append(record)
        web_results = data.copy()
    
    global queries_and_docs
    queries_and_docs = []
    for result in web_results:
        if 'snippet' in result['search_results'][0].keys():
            query = result['question']
            documents = [document["snippet"] for document in result["search_results"]]
            links = [document["link"] for document in result["search_results"]]
            queries_and_docs.append(
                {
                    "query": query,
                    "documents": documents,
                    "links": links
                }
            )

def save_results(results_to_save, save_path):
    with open(save_path, 'w') as f:
        for record in results_to_save:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    print(f"Reranked results are saved to file")

    ## savign the contaminated 
    contaminated_file_path = f"{save_path.split('.')[0]}_contaminated.jsonl"
    contaminated_count = 0
    with open(contaminated_file_path, 'w') as f:
        for record in results_to_save:
            if record['relevance_score'] > 0.85:
                json_string = json.dumps(record)
                f.write(json_string + "\n")
                contaminated_count += 1

    print(f"Contaminated results are saved to file. contaminated count: {contaminated_count}")



def rerank(web_results, save_path="/dockerx//home/machaita/LIMOSYN/data/jun1625/novelty_results_sandmath1k_seeds.jsonl"):
    build_queries_and_docs(web_results)
    print("Starting concurrent rerank process...")  
    results_to_save = asyncio.run(run_all_embeddings()) 
    save_results(results_to_save, save_path) 
    print("\nConcurrent rerank process finished.")  
  
# # --- Run the Main Async Function ---  
# if __name__ == "__main__":  
    
#     print("Starting concurrent rerank process...")  
#     asyncio.run(run_all_embeddings())  
#     print("\nConcurrent rerank process finished.")  
