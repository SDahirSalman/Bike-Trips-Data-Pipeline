begin;
create table if not exists public.staging_locations_table(
id varchar(32) not null, 
name varchar(256), 
terminalName varchar(256),
lat varchar(64), 
long varchar(64),
nbDocks int,
primary key(id))
sortkey(id);