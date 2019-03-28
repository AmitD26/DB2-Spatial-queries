DROP TABLE cse532.starbucksoriginal;
DROP TABLE cse532.starbucks;


CREATE TABLE cse532.starbucksoriginal(
brand VARCHAR (32),
store_number INT NOT NULL PRIMARY KEY,
name VARCHAR(128),
ownership_type VARCHAR(32),
facility_id INT,
features_products VARCHAR(128),
features_service VARCHAR(128),
features_stations VARCHAR(128),
food_region INT,
venue_type VARCHAR(16),
phone_number CHAR(12),
location VARCHAR(256),
street_address VARCHAR(64),
street_line11 VARCHAR(64),
street_line22 VARCHAR(64),
city VARCHAR(64),
state CHAR(2),
zip CHAR(10),
Country CHAR(2),
coordinates VARCHAR(256),
latitude double,
longitude double,
insert_date timestamp
);


CREATE TABLE CSE532.starbucks(
brand VARCHAR (32),
store_number INT NOT NULL PRIMARY KEY,
name VARCHAR(128),
ownership_type VARCHAR(32),
facility_id INT,
features_products VARCHAR(128),
features_service VARCHAR(128),
features_stations VARCHAR(128),
food_region INT,
venue_type VARCHAR(16),
phone_number CHAR(12),
location VARCHAR(256),
street_address VARCHAR(64),
street_line11 VARCHAR(64),
street_line22 VARCHAR(64),
city VARCHAR(64),
state CHAR(2),
zip CHAR(10),
Country CHAR(2),
coordinates VARCHAR(256),
insert_date timestamp,
geolocation DB2GSE.ST_POINT
);


!db2se register_spatial_column sample
-tableSchema      cse532
-tableName        starbucks
-columnName       geolocation
-srsName          nad83_srs_1
;




