from flask import Flask, render_template, request, jsonify
from activities import grammar, dictation, vocabulary

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/grammar', methods=['GET', 'POST'])
def grammar_activity():
    if request.method == 'POST':
        user_answers = request.form.getlist('answers')
        results = grammar.check_answers(user_answers)
        return render_template('grammar.html', questions=results['questions'], results=results)
    else:
        questions = grammar.get_questions()
        return render_template('grammar.html', questions=questions)

@app.route('/dictation', methods=['GET', 'POST'])
def dictation_activity():
    if request.method == 'POST':
        user_text = request.form['user_text']
        result = dictation.check_dictation(user_text)
        return render_template('dictation.html', passage=result['passage'], result=result)
    else:
        passage = dictation.get_passage()
        return render_template('dictation.html', passage=passage)

@app.route('/vocabulary', methods=['GET', 'POST'])
def vocabulary_activity():
    if request.method == 'POST':
        description = request.form['description']
        feedback = vocabulary.evaluate_description(description)
        return render_template('vocabulary.html', image=feedback['image'], feedback=feedback)
    else:
        image = vocabulary.get_image()
        return render_template('vocabulary.html', image=image)

if __name__ == '__main__':
    print("Server is starting...")
    app.run(debug=True)