python eval_gpt_review.py \
    -a generations/vicuna/answer_gpt35.jsonl generations/vicuna/65b-guanaco-vicuna-generations-topp0.9-temp0.7.jsonl \
    -q prompts/vicuna_questions.jsonl \
    -p prompts/vicuna_prompt_threeclass.jsonl \
    -r prompts/reviewer.jsonl \
    -o ratings/ \
    -m gpt-4

python qa_baseline_gpt.py --question prompts/vicuna_questions.jsonl --output generations/answer_gpt4_new.jsonl
