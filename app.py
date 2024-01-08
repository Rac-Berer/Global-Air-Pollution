# app.py
from flask import Flask, jsonify, render_template
import notebook

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/overall_aqi')
def overall_aqi():
    data = notebook.get_overall_aqi()
    return jsonify(data)

@app.route('/api/co_aqi')
def co_aqi():
    data = notebook.get_co_aqi()
    return jsonify(data)

@app.route('/api/ozone_aqi')
def ozone_aqi():
    data = notebook.get_ozone_aqi()
    return jsonify(data)

@app.route('/api/no2_aqi')
def no2_aqi():
    data = notebook.get_no2_aqi()
    return jsonify(data)

@app.route('/api/pm25_aqi')
def pm25_aqi():
    data = notebook.get_pm25_aqi()
    return jsonify(data)

@app.route('/api/avg_aqi_countries')
def avg_aqi_countries():
    countries = [
        "India", 
        "United States of America", 
        "United Kingdom of Great Britain and Northern Ireland", 
        "Russian Federation", 
        "China",
        "Germany",
        "France",
        "Mexico",
        "Brazil",
        "Australia"
    ]
    data = notebook.get_avg_aqi_for_countries(countries)
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True)
