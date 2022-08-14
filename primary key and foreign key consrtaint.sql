create database if not exists prim
use prim

create table if not exists carera(
course_id int not null,
course_name varchar(30),
course_status varchar(35),
num_of_enroll int,
primary key(course_id))

select * from carera

insert into carera values(1,'python','active',100)
insert into carera values(2,'mysql','active',107)
insert into carera values(3,'mysql','active',107)
create table if not exists stu_carera(
stu_id int ,
course_id1 int,
course_name varchar(30),
student_name varchar(30),
student_email varchar(30),
foreign key(course_id1) references carera(course_id)) 

insert into stu_carera values(120,01,'python','chirag','chb@gmail.com')
insert into stu_carera values(120,01,'python','chirag','chb@gmail.com');
insert into stu_carera values(120,01,'python','chirag','chb@gmail.com');

select * from stu_carera


create table if not exists payment(
course_name varchar(60),
course_id int,
course_status varchar(50),
course_sdate varchar(50),
foreign key(course_id) references carera(course_id))

insert into payment values('pyhton',2,'active','5th may')
insert into payment values('pyhton',1,'active','5th may')
insert into payment values('pyhton',2,'active','5th may')

select * from payment

create table class(
course_id int ,
class_name varchar(60),
class_topic varchar(60),
class_duration int ,
primary key(course_id),
foreign key(course_id) references carera(course_id))

insert into class values (1,'php','variable',2)
insert into class values (2,'php','variable',2)
insert into class values (3,'php','variable',2)

select  * from class

alter table carera drop primary key

alter table class drop primary key
alter table carera add constraint test_prim primary key(course_id,course_name)
 drop table carera
 drop table class
 
create table if not exists test(
id int not null , 
name varchar(60),
email_id varchar(60),
mobile_no varchar(9),
address varchar(50))

alter table test add primary key(id)

alter table test drop primary key

alter table test add constraint test_prim primary key(id,name)

create table parent(
id int not null ,
primary key(id))

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id))

insert into parent values(3)
select * from parent 
insert into child values(1,1)
select * from child
insert into child values(3,3)
delete from parent where id =1
delete from child where id =1

drop table child

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id) on delete cascade )

insert into child values(1,1),(1,2),(3,2),(2,2)

select * from child
select * from parent

delete from parent where id  = 1

create table parent1(
id int not null ,
primary key(id))
insert into parent1 values(2)

insert into parent1 values(3)

select  * from parent1

create table child2 (
id int ,
parent_id int ,
foreign key (parent_id) references parent1(id) on update cascade )

select * from child2
insert into child2 values(1,1),(1,2),(3,2),(2,2)
update parent1 set id=5 where id=2