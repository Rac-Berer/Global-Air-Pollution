# notebook.py
import pandas as pd

def load_data():
    # Update the path if your CSV file is located elsewhere
    pollution = pd.read_csv("data/global_air_pollutiondataset.csv")
    return pollution

def get_overall_aqi():
    pollution = load_data()
    pollution_cleaned = pollution.dropna()
    overall_aqi = pollution_cleaned[['Country', 'City', 'AQI_Value']].to_dict(orient='records')
    return overall_aqi

# Define similar functions for CO AQI, Ozone AQI, etc.

# Add more functions as needed
