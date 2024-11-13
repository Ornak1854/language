# English Language Learning Application

## Overview

This is a simple, interactive English language learning web application built with Flask (Python). It features several activities aimed at improving grammar, listening comprehension, and vocabulary. The application is designed to be deployed locally and provides a user-friendly interface that can be accessed through a web browser.

### Features:
- **Grammar Exercises**: Answer grammar-related questions to improve your understanding of English grammar rules.
- **Dictation Practice**: Listen to passages and transcribe them to practice listening and writing skills.
- **Vocabulary Building with Images**: Describe images in detail to expand your vocabulary.

## Project Structure

```
english_language_app/
├── app.py
├── templates/
│   ├── base.html
│   ├── home.html
│   ├── grammar.html
│   ├── dictation.html
│   └── vocabulary.html
├── static/
│   ├── css/
│   │   └── styles.css
│   ├── js/
│   │   └── scripts.js
│   └── images/
│       └── vocabulary/
├── activities/
│   ├── grammar.py
│   ├── dictation.py
│   └── vocabulary.py
└── data/
    ├── grammar_questions.json
    ├── dictation_passages.json
    └── vocabulary_images.json
```

### Explanation:
- **app.py**: The main Flask application file that handles routing.
- **templates/**: Contains HTML templates for different pages.
  - **base.html**: Base template with common elements (e.g., header, footer).
  - **home.html**: Homepage.
  - **grammar.html, dictation.html, vocabulary.html**: Templates for each activity.
- **static/**: Contains CSS, JavaScript, and images.
- **activities/**: Python modules with backend logic for each activity.
- **data/**: JSON files with data for activities (e.g., questions, passages).

## Installation

### Prerequisites
- Python 3.x
- `pip` (Python package manager)

### Steps
1. **Clone the Repository**
   ```sh
   git clone <repository-url>
   cd english_language_app
   ```

2. **Install Dependencies**
   ```sh
   pip install flask
   ```

3. **Run the Application**
   ```sh
   python app.py
   ```

4. **Access the Application**
   Open your web browser and navigate to `http://localhost:5000/`.

## Usage

### Activities
1. **Grammar Exercises**: Navigate to the "Grammar Exercises" link on the homepage. Answer the grammar questions provided.
2. **Dictation Practice**: Navigate to "Dictation Practice". Click on "Play Passage" and type what you hear.
3. **Vocabulary Building**: Navigate to "Vocabulary Building". View the image and describe it in detail.

### Navigation
The homepage provides links to each activity. The user can easily switch between different sections of the app.

## Project Dependencies
- **Flask**: Python web framework used to create the web server.
- **Bootstrap**: Used for creating a responsive and simple user interface.
- **Web Speech API**: Used for text-to-speech and speech-to-text functionality in the browser.

## Troubleshooting
2. **Static Files Not Loading**: Make sure your paths to static files are correct using `{{ url_for('static', filename='...') }}`.
3. **Port Issues**: The default Flask port is `5000`. If it's in use, change the port in `app.py` using `app.run(port=5001)`.

## Future Enhancements
- Add more complex activities, such as real-time conversation role-playing.
- Implement user progress tracking with a database.
- Enhance the GUI with more advanced JavaScript features.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact
For questions or feedback, please contact drabikmarcin1@gmail.com