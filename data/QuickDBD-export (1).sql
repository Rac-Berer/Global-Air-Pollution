-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "GlobalAirPollution" (
    "country" varchar(30)   NOT NULL,
    "city" varchar(50)   NOT NULL,
    "City_ID" int   NOT NULL,
    "aqi_value" int   NOT NULL,
    "aqi_category" varchar(30)   NOT NULL,
    "co_aqi_value" int   NOT NULL,
    "co_aqi_category" varchar(30)   NOT NULL,
    "ozone_aqi_value" int   NOT NULL,
    "ozone_aqi_category" varchar(30)   NOT NULL,
    "no2_aqi_value" int   NOT NULL,
    "no2_aqi_category" varchar(30)   NOT NULL,
    "pm2_5_aqi_value" int   NOT NULL,
    "pm2_5_aqi_category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_GlobalAirPollution" PRIMARY KEY (
        "City_ID"
     )
);

CREATE TABLE "Cities" (
    "City_ID" int   NOT NULL,
    "City" varchar(50)   NOT NULL,
    "Country" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Cities" PRIMARY KEY (
        "City_ID"
     )
);

CREATE TABLE "Overall_AQI" (
    "AQI_ID" int   NOT NULL,
    "City_ID" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "AQI_value" int   NOT NULL,
    "AQI_category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Overall_AQI" PRIMARY KEY (
        "AQI_ID"
     )
);

CREATE TABLE "Carbon_Monoxide" (
    "CO_ID" int   NOT NULL,
    "City_ID" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "CO_value" int   NOT NULL,
    "CO_category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Carbon_Monoxide" PRIMARY KEY (
        "CO_ID"
     )
);

CREATE TABLE "Ozone" (
    "Ozone_ID" int   NOT NULL,
    "City_ID" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Ozone_value" int   NOT NULL,
    "Ozone_category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Ozone" PRIMARY KEY (
        "Ozone_ID"
     )
);

CREATE TABLE "Nitrogen_Dioxide" (
    "NO_ID" int   NOT NULL,
    "City_ID" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "no2_aqi_value" int   NOT NULL,
    "no2_aqi_category" (varchar(30)   NOT NULL,
    CONSTRAINT "pk_Nitrogen_Dioxide" PRIMARY KEY (
        "NO_ID"
     )
);

CREATE TABLE "Particulate_Matter" (
    "City_ID" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "pm2_5_aqi_value" int   NOT NULL,
    "pm2_5_aqi_category" varchar(30)   NOT NULL
);

ALTER TABLE "GlobalAirPollution" ADD CONSTRAINT "fk_GlobalAirPollution_City_ID" FOREIGN KEY("City_ID")
REFERENCES "Cities" ("City_ID");

ALTER TABLE "Cities" ADD CONSTRAINT "fk_Cities_City" FOREIGN KEY("City")
REFERENCES "GlobalAirPollution" ("city");

ALTER TABLE "Overall_AQI" ADD CONSTRAINT "fk_Overall_AQI_City_ID" FOREIGN KEY("City_ID")
REFERENCES "Cities" ("City_ID");

ALTER TABLE "Carbon_Monoxide" ADD CONSTRAINT "fk_Carbon_Monoxide_City_ID" FOREIGN KEY("City_ID")
REFERENCES "Cities" ("City_ID");

ALTER TABLE "Ozone" ADD CONSTRAINT "fk_Ozone_City_ID" FOREIGN KEY("City_ID")
REFERENCES "Cities" ("City_ID");

ALTER TABLE "Nitrogen_Dioxide" ADD CONSTRAINT "fk_Nitrogen_Dioxide_City_ID" FOREIGN KEY("City_ID")
REFERENCES "Cities" ("City_ID");

ALTER TABLE "Particulate_Matter" ADD CONSTRAINT "fk_Particulate_Matter_City_ID" FOREIGN KEY("City_ID")
REFERENCES "Cities" ("City_ID");

