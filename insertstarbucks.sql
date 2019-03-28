-- load from "C:\projects\spatial\starbucks\starbucksfinal.csv" of del modified by timestampformat=\"M/DD/YYYY HH:MM\" MESSAGES load.msg INSERT INTO cse532.starbucksoriginal


INSERT INTO CSE532.starbucks(
brand,
store_number,
name,
ownership_type,
facility_id,
features_products,
features_service,
features_stations,
food_region,
venue_type,
phone_number,
location,
street_address,
street_line11,
street_line22,
city,
state,
zip,
Country,
coordinates,
insert_date,
geolocation)

SELECT 
brand,
store_number,
name,
ownership_type,
facility_id,
features_products,
features_service,
features_stations,
food_region,
venue_type,
phone_number,
location,
street_address,
street_line11,
street_line22,
city,
state,
zip,
Country,
coordinates,
insert_date,
db2gse.st_point(longitude, latitude,1)
FROM cse532.starbucksoriginal;













