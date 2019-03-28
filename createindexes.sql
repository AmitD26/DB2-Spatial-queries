drop index cse532.starbucksidx;
drop index cse532.countiesidx;

create index cse532.starbucksidx on cse532.starbucks(geolocation) extend using db2gse.spatial_index(0.85, 2, 5);

create index cse532.countiesidx on cse532.counties(shape) extend using db2gse.spatial_index(0.85, 2, 5);

runstats on table cse532.counties and indexes all;

runstats on table cse532.starbucks and indexes all;