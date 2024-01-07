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

def get_no2_aqi():
    return get_top_5_by_metric('NO2_AQI_Value')

def get_pm25_aqi():
    return get_top_5_by_metric('PM2.5_AQI_Value')

def get_avg_aqi_for_countries(countries):
    pollution = load_data()
    filtered_pollution = pollution[pollution['Country'].isin(countries)]
    avg_aqi_per_country = filtered_pollution.groupby('Country')['AQI_Value'].mean().reset_index()
    avg_aqi_per_country['AQI_Value'] = avg_aqi_per_country['AQI_Value'].round(2)
    return avg_aqi_per_country.to_dict(orient='records')
