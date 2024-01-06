# app.py
from flask import Flask, jsonify, render_template
import notebook

app = Flask(__name__)

@app.route('/')
def index():
    # Serve the index.html file
    return render_template('index.html')

@app.route('/api/overall_aqi')
def overall_aqi():
    # Fetch and return overall AQI data
    data = notebook.get_overall_aqi()
    return jsonify(data)

@app.route('/api/co_aqi')
def co_aqi():
    # Fetch and return CO AQI data
    data = notebook.get_co_aqi()
    return jsonify(data)

@app.route('/api/ozone_aqi')
def ozone_aqi():
    # Fetch and return Ozone AQI data
    data = notebook.get_ozone_aqi()
    return jsonify(data)

# ... Add similar routes for other AQI metrics ...

if __name__ == '__main__':
    app.run(debug=True)
