create database if not exists dress_data

use dress_data

create table if not exists dress(
    `Dress_ID` varchar(30),	
	`Style`	varchar(30),
	`Price`	varchar(30),
	`Rating`	varchar(30),
	`Size`	varchar(30),
	`Season`	varchar(30),
	`NeckLine`	varchar(30),
	`SleeveLength`	varchar(30),
	`waiseline`	varchar(30),
	`Material`	varchar(30),
	`abricType`	varchar(30),
	`Decoration`	varchar(30),
	`Pattern Type`	varchar(30),
	`Recommendation` varchar(30))
    
LOAD DATA INFILE  
'E:/AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;



select * from dress;
    
create table if not exists test1(
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key(test_id))    

select * from test1

create table if not exists test2(
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check (test_salary>5000)) 

select * from test2

insert into test2 values(1,'chirag','chb@gmail.com','kadi',8000)

select * from test2

insert into test2 values(1,'chirag','chb@gmail.com','kadi',8000),
(2,'dipak','chb1@gmail.com','kadi',9000),
(3,'rajesh','chb2@gmail.com','kadi',10000)

create table if not exists test4(
test_id int not null auto_increment,
test_name varchar(30) not null default 'unknown',
test_mailid varchar(30) unique not null,
test_address varchar(30) check (test_address='kalol') not null,
test_salary int check (test_salary>5000) not null,
primary key(test_id)) 

select * from test4

insert into test4(test_id,test_name,test_mailid,test_address,test_salary) 
values (101,'sudhanshu','sudhanshu@ineuron.ai','kalol' , 50000)

create table if not exists test9(
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check(test_salary>5000))

select * from test9

alter table test9 add check(test_id>0) 

insert into test9 values(12,'chirag','chb@gmail.com','kadi',8000)
insert into test9 values(0,'chirag','chb@gmail.com','kadi',8000) # violation of condition

create table if not exists test10( 
test_id int NOT NULL,
test_name varchar(30) , 
test_mailid varchar(30),
test_adress varchar(30) check (test_adress= 'bengalore'),
test_salary int check(test_salary > 10000))

select * from test10

insert into test10(test_name,test_mailid,test_adress,test_salary) values('chb','rt@gmail.com','rajkot',15000)

create table if not exists test11( 
test_id int NOT NULL default 0,
test_name varchar(30) , 
test_mailid varchar(30),
test_adress varchar(30) check (test_adress= 'bengalore'),
test_salary int check(test_salary > 10000))

insert into test11(test_name,test_mailid,test_adress,test_salary) values('chb','rt@gmail.com','bengalore',15000)
insert into test11(test_name,test_mailid,test_adress,test_salary) values('chb','rt@gmail.com','bengalore',15000)
select * from test11

create table if not exists test12( 
test_id int NOT NULL default 0,
test_name varchar(30) , 
test_mailid varchar(30) unique,
test_adress varchar(30) check (test_adress= 'bengalore'),
test_salary int check(test_salary > 10000))

select * from test12

insert into test12(test_name,test_mailid,test_adress,test_salary) values('chb','rt@gmail.com','bengalore',15000)
insert into test12(test_name,test_mailid,test_adress,test_salary) values('chb','rt@gmail.com','bengalore',15000)

create table if not exists test13( 
test_id int NOT NULL auto_increment,
test_name varchar(30) not null default 'no name', 
test_mailid varchar(30) unique not null,
test_adress varchar(30) check (test_adress= 'bengalore'),
test_salary int check(test_salary > 10000),
primary key(test_id))

select * from test13

insert into test13 ( test_id , test_name , test_mailid , test_adress,test_salary) 
values (101 , 'sudhanshu','sudhanshu55@ineuron.ai','bengalore' , 50000)
insert into test13 (test_name , test_mailid , test_adress,test_salary) 
values ('','sudhanshu1255@ineuron.ai','bengalore' , 50000)


insert into test13 (test_mailid , test_adress,test_salary) 
values ('sudhanshu123655@ineuron.ai','bengalore' , 50000)


insert into test13 (test_mailid , test_adress,test_salary) 
values ('sudhanshu121235@ineuron.ai','kadi' , 50000)


insert into test13 ( test_name , test_mailid , test_adress,test_salary) 
values ('sudhanshu','sudhanshu90@ineuron.ai','bengalore' , 50000)

create table if not exists test121( 
test_id int NOT NULL auto_increment,
test_name varchar(30) not null default 'no name', 
test_mailid varchar(30) unique not null,
testadress varchar(30) not null,
test_salary int check(test_salary > 10000),
constraint CHK_testaddtess check(test_adress='kadi' or test_adress='kalol' or test_adress='ahmedabad')
primary key(test_id))


