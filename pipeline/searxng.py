"""
code to invoke the self-hosted SearXNG server and search the web for the given search questions.
"""


import json
from langchain_community.utilities import SearxSearchWrapper, DuckDuckGoSearchAPIWrapper
from langchain_community.tools import DuckDuckGoSearchResults
# from rerank import rerank
from embeddings import rerank
from tqdm import tqdm
import time
import requests
import random
import subprocess
import docker



## Gloabl configuration
search = SearxSearchWrapper(searx_host="http://localhost:8080/")
RERANK_URL = "http://localhost:7997/rerank"  
MODEL_NAME = "mixedbread-ai/mxbai-rerank-xsmall-v1"  

# --- Configuration for Delays and Retries ---
BASE_DELAY_SECONDS = 0 # **Increased base delay**, start with 10-15s
MAX_RETRIES = 3         # Number of retries for connection errors
RETRY_INITIAL_DELAY = 3 # Initial delay before the first retry (seconds)


class NoGoodSearchResultsError(Exception):
    def __init__(self, message):
        super().__init__(message)


def restart_searxng_container(container_name="searxng", wait_time_seconds=60):
    """
    Connects to the Docker daemon and restarts a specified container,
    then waits for a fixed amount of time.

    Args:
        container_name (str): The name or ID of the Docker container to restart.
        wait_time_seconds (int): The number of seconds to wait after restarting.
    """
    print("Initializing Docker client...")
    try:
        # This connects to the Docker daemon using the socket mounted into the container
        client = docker.from_env()

        print(f"Searching for container '{container_name}'...")
        # Get the container object
        container = client.containers.get(container_name)

        print(f"Found container '{container.name}' ({container.short_id}). Restarting...")
        # Issue the restart command
        container.restart()

        print(f"Restart command issued for '{container_name}'.")
        print(f"Now waiting for {wait_time_seconds} seconds...")
        time.sleep(wait_time_seconds)
        print("Wait time complete. The script can now continue.")

    except docker.errors.NotFound:
        print(f"Error: Container '{container_name}' not found.")
    except docker.errors.DockerException as e:
        print(f"An error occurred with Docker: {e}")
        print("Please ensure the Docker socket is correctly mounted into this container.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

def searchWeb(questions, n = 30):
    """
    searches the web for the similar content on the web
    args
    -----
    - questions: str | list 
        This can be a direct list or the json lines file having 'question' as the key
    - n: int
        Number of web search results to retrieve 
    """
    global search
    
    wrapper = DuckDuckGoSearchAPIWrapper(max_results=1)
    langSearch = DuckDuckGoSearchResults(api_wrapper=wrapper)    
    final_search_results = []
    records = []


    if isinstance(questions, str):
        with open(questions, 'r') as f:
            records = json.load(f)
            # for line in f:
            #     record = json.loads(line.strip())
            #     records.append(record)
    
        questions = [record["instruction"] for record in records]
        # questions = questions[:200]
    elif isinstance(questions, list):
        pass
    else:
        print(f"ERROR: questions received neither in the LIST format not in the JSONL format")



    print(f"Starting the web-search process")
    for q, question in tqdm(enumerate(questions), desc="search:", total=len(questions)):

        # search_results = langSearch.invoke(question)

        # record = {
        #     'question': question,
        #     'search_results': search_results
        # }
        # final_search_results.append(record)

        # continue

        success = False ## start each question with success false     
        for attempt in range(MAX_RETRIES + 1):
            try:
                if attempt > 0:
                    retry_delay = RETRY_INITIAL_DELAY * (2 ** (attempt - 1))
                    jitter = retry_delay * random.uniform(0.5, 1.5) # Add randomness
                    print(f"  Retry {attempt}/{MAX_RETRIES}. Waiting for {jitter:.2f} seconds...")
                    time.sleep(jitter)
                
                ## sleep for different random time to not cought by google                
                time.sleep(random.uniform(0.5, 5.5))
                search_results = search.results(question, num_results=n)

                if "Result" in search_results[0] and search_results[0]["Result"] == "No good Search Result was found":
                    raise NoGoodSearchResultsError(f"Search request hitting too many requests..")

                record = {
                    'question': question,
                    'search_results': search_results
                }
                final_search_results.append(record)
                success = True                
                break # Exit retry loop on success

            except NoGoodSearchResultsError as e:
                print(f"Cought error: {e}")
                restart_searxng_container()

            except requests.exceptions.ConnectionError as e:
                print(f"  Connection Error on attempt {attempt} for '{q}': {e}")
                if attempt >= MAX_RETRIES:
                    print(f"  Max retries reached for '{q}'. Giving up.")
                
            except Exception as e:
                print(f"  An unexpected error occurred for '{q}': {e}")
                break
        
        # if not success: break
        time.sleep(BASE_DELAY_SECONDS)
        # if q == 10: break

    return final_search_results
def save(web_results, output_file):
    with open(output_file, "w") as f:
        for record in web_results:
            json_string = json.dumps(record)
            f.write(json_string + "\n")

    print("[update]: saved the web results to file")




    

if __name__ == '__main__':    
    # web_results = searchWeb("/dockerx/home/machaita/LLaMA-Factory-2/data/sandmath1k_seeds.json")
    # save(web_results, output_file="/dockerx/home/machaita/LIMOSYN/data/jun1625/novelty_websearch_results_sandmath1k_seeds_lc.jsonl")
    # rerank(web_results)
    rerank("/dockerx//home/machaita/LIMOSYN/data/jun1625/novelty_websearch_results_sandmath1k_seeds.jsonl")



