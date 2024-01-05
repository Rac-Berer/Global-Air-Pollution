# app.py
from flask import Flask, jsonify, render_template
from notebook import get_overall_aqi

app = Flask(__name__)

@app.route('/')
def index():
    # Fetch data to be displayed on the homepage
    data = get_overall_aqi()
    return render_template('index.html', data=data)

@app.route('/api/aqi')
def aqi():
    data = get_overall_aqi()
    return jsonify(data)

# Add more routes for other data types if needed

if __name__ == '__main__':
    app.run(debug=True)
