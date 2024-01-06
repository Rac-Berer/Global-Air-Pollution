# notebook.py
import pandas as pd

def load_data():
    return pd.read_csv("data/global_air_pollutiondataset.csv")

def get_top_5_by_metric(metric):
    pollution = load_data()
    top_5 = pollution.groupby('City')[metric].mean().nlargest(5).reset_index()
    return top_5.to_dict(orient='records')

def get_overall_aqi():
    return get_top_5_by_metric('AQI_Value')

def get_co_aqi():
    return get_top_5_by_metric('CO_AQI_Value')

def get_ozone_aqi():
    return get_top_5_by_metric('Ozone_AQI_Value')

# Add similar functions for other AQI metrics
