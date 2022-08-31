create database if not exists pivot;
use pivot;

create table order1(
order_id int,
empid int,
vendorid int );

select  * from order1;

insert into order1 values (1, 258, 1580),
(2, 254, 1496),
(3, 257, 1494),
(4, 261, 1650),
(5, 251, 1654),
(6, 253, 1664);

select order_id,
if(empid=258,2,"fix") as e258,
if(empid=254,2,null) as e254,
if(empid=257,2,null) as e257,
if(empid=261,2,null) as e261,
if(empid=251,2,null) as e251,
if(empid=253,2,null) as e253
from order1





