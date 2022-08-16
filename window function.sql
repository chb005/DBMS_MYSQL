create database if not exists win_fun
use win_fun
create table if not exists chb_stu(
student_id int,
student_batch varchar(30),
student_name varchar(30),
student_stream varchar(30),
srudent_marks int,
student_email varchar(30))

insert into chb_stu values (101,'fsda','chirag','ce',85,'chb@gmail.com')
select  * from chb_stu

insert into chb_stu values (102,'fsda','dipak','ce',45,'chb1@gmail.com'),
(103,'fsda','rajesh','ce',45,'chb2@gmail.com'),
(104,'fsda','dipak','ce',65,'chb3@gmail.com'),
(105,'fsda','romiml','ec',78,'chb4@gmail.com'),
(106,'fsds','sanket','me',98,'chb5@gmail.com'),
(107,'fsds','ramesh','it',58,'chb6@gmail.com'),
(108,'fsds','harsh','bm',52,'chb7@gmail.com'),
(109,'fsds','ramesh','ce',52,'chb8@gmail.com'),
(110,'fsde','ram','ec',85,'chb9@gmail.com'),
(111,'fsde','darsh','ec',65,'chb10@gmail.com'),
(112,'fsde','navin','it',73,'chb11@gmail.com'),
(113,'fsbd','rakesh','me',72,'chb12@gmail.com'),
(114,'fsbd','nikita','bm',95,'chb13@gmail.com')

select student_batch,sum(srudent_marks) from  chb_stu group by student_batch
select student_batch,min(srudent_marks) from  chb_stu group by student_batch
select student_batch,max(srudent_marks) from  chb_stu group by student_batch
select student_batch,avg(srudent_marks) as avg_marks from  chb_stu group by student_batch
select count(student_batch) from chb_stu
select student_batch,count(*) from chb_stu group by student_batch

select max(srudent_marks) from chb_stu where student_batch="fsda"
select student_batch,student_name,max(srudent_marks) from chb_stu group by student_batch

select student_name,max(srudent_marks) from chb_stu where student_batch='fsda'

select student_name from chb_stu where srudent_marks in 
(select max(srudent_marks) from chb_stu where student_batch="fsda")

select student_name,srudent_marks from chb_stu where student_batch="fsda" order by srudent_marks desc limit 2

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 1,1

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 2,2

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 2,1

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 3,1

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 4,1

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 3,3

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 3

select * from chb_stu where student_batch="fsda" order by srudent_marks desc limit 2,3

select * from chb_stu where srudent_marks =(
select min(srudent_marks) from 
(select srudent_marks from chb_stu 
where student_batch ="fsda"
order by srudent_marks desc
limit 3 ) as top);

select student_name,srudent_marks from chb_stu where student_batch='fsda' order by srudent_marks desc limit 3

select * from chb_stu

select student_id,student_batch,student_stream,srudent_marks,row_number() over(order by srudent_marks desc) as 'row_number'
from chb_stu

select * from(select student_id,student_batch,student_stream,srudent_marks,row_number() over(partition by student_batch order by srudent_marks desc) 
as 'row_num' from chb_stu)as test where row_num=3

select student_id,student_batch,student_stream,srudent_marks,row_number() over(partition by student_batch order by srudent_marks desc) 
as 'row_num' from chb_stu

select student_id,student_batch,student_stream,srudent_marks,row_number() over(order by srudent_marks desc) 
as 'row_num',rank() over(order by srudent_marks desc ) as chb1_rank from chb_stu	

select * from(select student_id,student_batch,student_stream,srudent_marks,row_number() over(partition by student_batch order by srudent_marks desc) 
as 'row_num',rank() over (partition by student_batch order by srudent_marks desc ) as chb_rank  from chb_stu) as new1 where chb_rank=3

select * from(select student_id,student_batch,student_stream,srudent_marks,row_number() over(partition by student_batch order by srudent_marks desc) 
as 'row_num',rank() over (partition by student_batch order by srudent_marks desc ) as 'chb_rank', dense_rank() over( partition by student_batch order by srudent_marks desc) as 'dense_rank'
from chb_stu ) as test where `dense_rank` = 2