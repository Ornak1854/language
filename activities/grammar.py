import json
import random

def get_questions(num_questions=5):
    with open('data/grammar_questions.json', 'r') as f:
        questions = json.load(f)
    return random.sample(questions, num_questions)

def check_answers(user_answers):
    correct_answers = []
    with open('data/grammar_questions.json', 'r') as f:
        questions = json.load(f)
    results = []
    for i, user_answer in enumerate(user_answers):
        question = questions[i]
        is_correct = user_answer.strip().lower() == question['answer'].strip().lower()
        results.append({
            'question': question['question'],
            'user_answer': user_answer,
            'correct_answer': question['answer'],
            'is_correct': is_correct
        })
    return {'results': results, 'questions': questions[:len(user_answers)]}
