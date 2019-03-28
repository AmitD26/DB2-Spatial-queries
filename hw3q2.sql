select name,location,db2gse.st_distance(db2gse.st_point(-73.1233890, 40.9123760,1), geolocation, 'STATUTE MILE') as distance 
from cse532.starbucks 
where db2gse.st_contains(db2gse.st_buffer(db2gse.st_point(-73.1233890, 40.9123760,1),'0.25'), geolocation) = 1 
order by distance 
fetch first 1 rows only
