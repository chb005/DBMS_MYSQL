create database bulki;
use bulki

create table if not exists swiggy(
Shop_Name varchar(250),
Cuisine varchar(500),
Location varchar(500),
Rating decimal(4,3),
Cost_for_Two int)

select * from swiggy



LOAD DATA INFILE  
'E:/chb.csv'
into table swiggy
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;



