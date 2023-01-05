drop table if exists master_plan;
create table master_plan(
  start_time_utc text,
  duration text,
  date text,
  team text,
  spass_type text,
  target text,
  request_name text,
  library_definition text,
  title text,
  description text
);

COPY master_plan 
FROM 'C:\Users\jlxfa\OneDrive\cassini_data\curious_data\data\master_plan.csv' 
WITH DELIMITER ',' HEADER CSV;

/* with a schema 
create schema if not exists import;
drop table if exists import.master_plan;
create table import.master_plan(
  start_time_utc text,
  duration text,
  date text,
  team text,
  spass_type text,
  target text,
  request_name text,
  library_definition text,
  title text,
  description text
);
COPY import.master_plan 
FROM 'C:\Users\jlxfa\OneDrive\cassini_data\curious_data\data\master_plan.csv' 
WITH DELIMITER ',' HEADER CSV;
*/