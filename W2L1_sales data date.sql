create database if not exists sales2

use sales2

CREATE TABLE sales1 (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 8) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);

select * from sales1

SET SESSION sql_mode = ''

load data infile 
'F:/sales_data_final.csv'
into table sales1
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows 

select * from sales1

select str_to_date(order_date,'%m/%d/%y') from sales1

alter table sales1 add column order_date_new date after order_date

SET SQL_SAFE_UPDATES = 0;

update sales1 set order_date_new=str_to_date(order_date,'%m/%d/%Y')

# drop table sales_data_final

alter table sales1 add column ship_date_new date after ship_date

update sales1 set ship_date_new=str_to_date(ship_date,'%m/%d/%Y')

select * from sales1 where ship_date_new = '2011-01-05'

select * from sales1 where ship_date_new > '2011-01-05'

select * from sales1 where ship_date_new < '2011-01-05'

select * from sales1 where ship_date_new between '2011-01-05' and '2011-08-30'

select now()

select curdate()

select curtime()

select * from sales1 where ship_date_new < date_sub(now(),interval 1 week)

select date_sub(now(),interval 1 month)

select date_sub(now(),interval 30 month)

select date_sub(now(),interval 45 day )

select date_sub(now(),interval 12 year)

select * from sales1

alter table sales1 add column flag date after order_id 

update sales1 set flag=now()

alter table sales1 add column year_new int
alter table sales1 add column month_new int
alter table sales1 add column day_new int;

update sales1 set year_new=year(order_date_new);
update sales1 set month_new=month(order_date_new);
update sales1 set day_new=day(order_date_new);	

alter table sales1 modify column Year_new int
alter table sales1 modify column Month_new int
alter table sales1 modify column Day_new int;

select * from sales1 limit 5

select month(order_date_new) from sales1

select Year_new, avg(sales) from sales1 group by Year_new
select Year_new, sum(sales) from sales1 group by Year_new
select Year_new, min(sales) from sales1 group by Year_new
select Year_new, max(sales) from sales1 group by Year_new
select Year_new, sum(quantity) from sales1 group by Year_new

select (sales*discount+shipping_cost) as company_cost from sales1

select order_id, discount, if(discount > 0, 'YES', 'NO') as discount_flag from sales1	

alter table sales1 add column discount_flag varchar (20) after discount

update sales1 set discount_flag=if(discount>0, 'YES','NO')

select count(*) from sales1 where discount>0

select discount_flag,count(*) from sales1 group by discount_flag