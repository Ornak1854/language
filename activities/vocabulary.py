import json
import random

def get_image():
    with open('data/vocabulary_images.json', 'r') as f:
        images = json.load(f)
    return random.choice(images)

def evaluate_description(description):
    # Simple evaluation: check for use of key vocabulary words
    image = get_image()
    keywords = image['keywords']
    used_keywords = [word for word in keywords if word in description.lower()]
    message = f"You used {len(used_keywords)} out of {len(keywords)} key words."
    return {'image': image, 'message': message}