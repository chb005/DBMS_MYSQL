select * from products;
create table if not exists raj(
cu_id int(4),
fname varchar(50),
department varchar(50),
salary int(9));

insert into raj values(11,'chirag5454232','IT',68000)

insert into raj values(2,'chirag1','computer',45000),
(3,'dipak','computer',45000),
(4,'cgraj1','computer',47000),
(5,'ramesh1','IT',65000),
(6,'sivam','IT',65000),
(7,'nuran','IT',75000),
(8,'jump','me',65000),
(9,'cmamukadi','me',75000);

select * from raj;

select p.*, row_number() over() as newpro from raj p;

select  p.*,dense_rank() over(partition by department order by salary desc) as dence_rank from raj p;

select  p.*,rank() over(partition by department order by salary desc) as rnk from raj p;

select  p.*,dense_rank() over(partition by department order by salary desc) as dence_rank from raj p;

select * from(select  p.*,dense_rank() over(partition by department order by salary desc) as 
dence_rank from raj p)as dnse where dence_rank<=2
 

#row

select p.*, row_number() over() as newpro from products p;

#dense rank

select  p.*,dense_rank() over(partition by size order by cost_per_box desc) as dence_rank from products p;

#rank
select  p.*,rank() over(partition by category order by cost_per_box desc) as rnk from products p


#lag and lead

select * from sales

select spid,saledate,amount,lag(amount) over(order by saledate) as prev_data from sales

select spid,saledate,amount,lead(amount) over(order by saledate) as prev_data from sales
