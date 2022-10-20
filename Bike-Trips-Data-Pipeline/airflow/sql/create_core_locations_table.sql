begin;
create table if not exists public.core_locations_table(
station_skey int identity(0,1),
id varchar(32) not null, 
name varchar(256), 
terminalName varchar(256),
lat varchar(64), 
long varchar(64),
nbDocks int,
active int default 1,
primary key(station_skey, id))
sortkey(station_skey);