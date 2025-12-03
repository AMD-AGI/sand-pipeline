import re

def processResponse(text):
    match = re.search(r"<D>(.*?)</D>", text, re.DOTALL)  
    try:
        if match:  
            return float(match.group(1).strip())
        else:  
            return 0.0
    except ValueError as e:
        return 0.0


difficulty_prompt = r"""
    # ROLE: Expert Math Problem Difficulty Assessor

    # TASK:
    Analyze the provided math problem and solution to assign a difficulty score based on the provided reference materials.

    # REFERENCE MATERIALS:
    <difficulty_reference>
    ## Difficulty Level Descriptions (1.0 - 10.0 Scale)

    1.0: Problems strictly for beginner, on the easiest elementary school or middle school levels (MOEMS, MATHCOUNTS School, AMC 8 1-10, AMC 10 1-10, easier AMC 12 1-5, and others that involve standard techniques introduced up to the middle school level), most traditional middle/high school word problems.

    1.5: Problems for stronger beginner students, on the level of the middling problems in most middle school contests (AMC 8 11-20, harder AMC 10 1-10, AMC 12 1-5, and those others that force students to apply their school-level knowledge to slightly more challenging problems), traditional middle/high school word problems with more complex problem solving.

    2.0: For motivated beginners, harder questions from the previous categories (AMC 8 21-25, MATHCOUNTS Chapter (Sprint 21-30, Target 6-8), MATHCOUNTS States/Nationals, AMC 10 11-15, AMC 12 5-10, easiest AIME 1-3)

    2.5: More advanced beginner problems, hardest questions from previous categories (Harder AMC 8 21-25, harder MATHCOUNTS States questions, AMC 10 16-20, AMC 12 11-15, usual AIME 1-3)

    3.0: Early intermediate problems that require more creative thinking (harder MATHCOUNTS National questions, AMC 10 21-25, AMC 12 15-20, hardest AIME 1-3, usual AIME 4-6).

    3.5: Problems requiring non-trivial insights or synthesis (Harder AMC 10 21-25, harder AMC 12 15-20, usual AIME 4-6, harder AIME 7-9).

    4.0: Intermediate-level problems (AMC 12 21-25, hardest AIME 4-6, usual AIME 7-10).

    4.5: Strong intermediate problems bridging to Olympiad style (Harder AMC 12 21-25, usual AIME 10-12, easiest USAJMO 1/4).

    5.0: More difficult AIME problems (11-13), simple proof-based Olympiad-style problems (early JBMO questions, easier USAJMO 1/4).

    5.5: Challenging AIME problems, introductory Olympiad proofs (Hardest AIME 11-13, average USAJMO 1/4, easier USAJMO 2/5).

    6.0: High-leveled AIME-styled questions (14/15). Introductory-leveled Olympiad-level questions (harder USAJMO 1/4 and easier USAJMO 2/5, easier USAMO and IMO 1/4).

    6.5: Solid introductory Olympiad problems (Average USAJMO 2/5, harder USAJMO 3/6, average USAMO/IMO 1/4).

    7.0: Tougher Olympiad-level questions, may require more technical knowledge (harder USAJMO 2/5 and most USAJMO 3/6, extremely hard USAMO and IMO 1/4, easy-medium USAMO and IMO 2/5).

    7.5: Strong Olympiad problems (Hardest USAJMO 3/6, medium USAMO/IMO 2/5).

    8.0: High-level Olympiad-level questions (medium-hard USAMO and IMO 2/5, easiest USAMO and IMO 3/6).

    8.5: Very challenging Olympiad problems (Hard USAMO/IMO 2/5, average USAMO/IMO 3/6).

    9.0: Expert Olympiad-level questions (average USAMO and IMO 3/6).

    9.5: The hardest problems appearing on Olympiads which the strongest students could reasonably solve (hard USAMO and IMO 3/6).

    10.0: Historically hard problems, generally unsuitable for very hard competitions (such as the IMO) due to being exceedingly tedious, long, and difficult (e.g. very few students are capable of solving on a worldwide basis).
   
    </difficulty_reference>

    # INSTRUCTIONS:
    1.  **Analyze:** Carefully read the provided `Math Problem` and its `Solution`. Identify the core mathematical concepts, required techniques, and the complexity of the argument. Note any particularly clever steps, non-obvious insights, or reliance on advanced theorems.
    2.  **Compare:** Compare the analyzed problem to the `Difficulty Level Descriptions` provided in the reference materials. Consider where it fits in terms of typical competition level (AMC 8/10/12, AIME, USA(J)MO, IMO) and the type of thinking required.
    3.  **Score:** Assign a difficulty score between **1.0 and 10.0**, using increments of **0.5** (e.g., 3.0, 3.5, 4.0). The score must be consistent with the provided reference scale.
    4.  **Summarize:** Write a brief paragraph summarizing the problem's core topic and mathematical area(s). Enclose this summary within `<S>` and `</S>` tags.
    5.  **Assign Score:** Place the difficulty score assigned in step 3 within `<D>` and `</D>` tags.
    6.  **Justify:** Write a paragraph explaining the reasoning behind the assigned difficulty score, explicitly referencing the comparison made in step 2 (e.g., "This problem involves techniques similar to problems at difficulty level 3.5..." or "The required insight aligns with the description for level 6.0..."). Mention aspects of the problem or solution (like multi-step reasoning, specific theorems, type of creativity needed) that justify the score. Enclose this justification within `<R>` and `</R>` tags.

    # OUTPUT FORMAT:
    <S>[Your brief paragraph summarizing the problem.]</S>
    <D>[The assigned score, e.g., 4.5]</D>
    <R>[Your paragraph justifying the score based on analysis and comparison to references.]</R>

    # INPUT PROBLEM & SOLUTION:

    ## Math Problem:
    <|question|>

    ## Solution:
    <|solution|>
    """

