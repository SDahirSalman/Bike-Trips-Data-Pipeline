DELETE FROM staging_locations_table USING (SELECT id, terminalName, nbDocks
FROM core_locations_table
WHERE active = 1) AS active_stations
WHERE active_stations.id = staging_locations_table.id AND active_stations.terminalName = staging_locations_table.terminalName AND active_stations.nbDocks = staging_locations_table.nbDocks;

UPDATE core_locations_table
SET active = 0
where active = 1 and id IN(
SELECT core_locations_table.id FROM core_locations_table 
INNER JOIN staging_locations_table ON  core_locations_table.id = staging_locations_table.id
WHERE active = 1);

INSERT INTO core_locations_table(
id, name, terminalName,
lat, long, nbDocks,
active)
SELECT id, 
name, terminalName,lat, long,
nbDocks,1
FROM staging_locations_table;

DROP TABLE staging_locations_table;