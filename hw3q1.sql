select statefp, countyfp, county_name, count(*) as starbucks_count
from cse532.counties, cse532.starbucks
where db2gse.ST_Contains(shape, geolocation) = 1 selectivity 0.00001
group by (statefp, countyfp, county_name)
order by starbucks_count desc
fetch first 1 rows only
