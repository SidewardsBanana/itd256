drop table if exists ite140roster;
create table ite140roster(
    Fname text,
    Lname text,
    GitRepo text
);

COPY ite40roster
FROM '[PATH TO DIRECTORY]/ite140roster.csv'
WITH DELIMITER ',' HEADER CSV;