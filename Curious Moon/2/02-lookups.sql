-- Lookup
select distinct(team)
as description
into teams
from import.master_plan;

-- Adding a Primary Key
alter table teams
add id serial primary key;

drop table if exists [LOOKUP TABLE];
select distinct(THING)
as description
into [LOOKUP TABLE]
from import.master_plan;

alter table [LOOKUP TABLE]
add id serial primary key;