import json
import random
from difflib import SequenceMatcher

def get_passage():
    with open('data/dictation_passages.json', 'r') as f:
        passages = json.load(f)
    return random.choice(passages)['text']

def check_dictation(user_text):
    passage = get_passage()
    ratio = SequenceMatcher(None, user_text.lower(), passage.lower()).ratio()
    accuracy = round(ratio * 100, 2)
    return {'passage': passage, 'user_text': user_text, 'accuracy': accuracy}
