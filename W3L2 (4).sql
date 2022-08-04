create database if not exists fun

#dump 5,00,000 records into table

use fun

create table if not exists test3(
InvoiceNo int,
StockCode varchar(25) ,
Description1 varchar(50),
Quantity int(50),
InvoiceDate VARCHAR(15),
UnitPrice DECIMAL(38, 3),
CustomerID int(50),
Country varchar(50)
);

select * from test2

SET SESSION sql_mode = ''

alter table test2 rename column Description1 to Description

select count(*) from test2

load data infile 
'F:/first1.csv'
into table test3
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows 

select * from test3

select count(*) from test3 where CustomerID=17850

