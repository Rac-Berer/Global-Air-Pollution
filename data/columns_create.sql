CREATE TABLE Cities (
    City_ID INT PRIMARY KEY,
    City VARCHAR(255) NOT NULL,
    Country VARCHAR(255) NOT NULL 
);

	SELECT * FROM Cities;
-- drop table Cities;

CREATE TABLE GlobalAirPollution (
    City_ID INT,
	City VARCHAR(255) NOT NULL,
	Country VARCHAR(255) NOT NULL,
    AQI_Value INT,
    AQI_Category VARCHAR(255) NOT NULL,
    CO_AQI_Value INT,
    CO_AQI_Category VARCHAR(255) NOT NULL,
    Ozone_AQI_Value INT,
    Ozone_AQI_Category VARCHAR(255) NOT NULL,
    NO2_AQI_Value INT,
    NO2_AQI_Category VARCHAR(255) NOT NULL,
    PM25_AQI_Value INT,
    PM25_AQI_Category VARCHAR(255) NOT NULL,
    FOREIGN KEY (City_ID) REFERENCES Cities(City_ID)
);
	
	SELECT * FROM GlobalAirPollution;
-- drop table GlobalAirPollution;