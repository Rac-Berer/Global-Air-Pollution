CREATE TABLE Cities (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(255),
    Country VARCHAR(255) 
);

	SELECT * FROM Cities;
-- drop table Cities

CREATE TABLE GlobalAirPollution (
    CityID INT,
	Country VARCHAR(255),
    City VARCHAR(255),
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
    FOREIGN KEY (CityID) REFERENCES Cities(CityID)
);
	
	SELECT * FROM GlobalAirPollution;
-- drop table GlobalAirPollution

