create database if not exists chb_partition
use chb_partition

create table if not exists partition1(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)

select * from partition1

insert into partition1 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019)
insert into partition1 values('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) 

select * from partition1 where course_lauch_year=2019

drop table partition1
_____________________________________________________________________________________________________________
create table partition2(
course_name varchar(50),
course_id int(10),
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by range(course_launch_year)(
partition p0 values less than (2019),
partition p1 values less than (2020),
partition p2 values less than (2021),
partition p3 values less than (2022),
partition p4 values less than (2023));

select * from partition2

insert into partition2 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) 

select * from partition2 where course_launch_year=2023

select partition_name,table_name,table_rows from information_schema.partitions where table_name='partition2'

________________________________________________________________________________________________________________

create table ineuron_courses2(
course_name varchar(50),
course_id int(10),
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by hash(course_launch_year)
partitions 5;

select partition_name,table_name,table_rows from information_schema.partitions where table_name='ineuron_courses2'

insert into ineuron_courses2 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) 
_______________________________________________________________________________________________________________

create table ineuron_courses4(
course_name varchar(50),
course_id int(10) primary key ,
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by key()
partitions 10;

select partition_name,table_name,table_rows from information_schema.partitions where table_name='ineuron_courses4'

insert into ineuron_courses4 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019)
	
select * from ineuron_courses4

select MD5('chirag')

#use hashing algo to assign values to partition.
__________________________________________________________________________________________________________

create table ineuron_courses6(
course_name varchar(50) ,
course_id int(10) ,
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by list(course_launch_year)(
partition p0 values in(2019,2020),
partition p1 values in(2022,2021)
)

insert into ineuron_courses6 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019)

select partition_name , table_name , table_rows from information_schema.partitions where table_name = 'ineuron_courses6'

________________________________________________________________________________________________________________

create table ineuron_courses8(
course_name varchar(50) ,
course_id int(10) ,
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by range columns(course_name ,course_id,course_launch_year )(
partition p0 values less than ('aiops',105,2019),
partition p1 values less than ('fsds' ,110,2021),
partition p2 values less than ('MERN',116,2023))

select ('aiops',105,2019) < ('fsds' ,110,2021)
select('chirag') < ('dipak')
select('a') > ('b')
select ('a') > ('b')

select partition_name , table_name , table_rows from information_schema.partitions where table_name = 'ineuron_courses9'

insert ignore into ineuron_courses8 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019)

_______________________________________________________________________________________________________________

create table ineuron_courses9(
course_name varchar(50) ,
course_id int(10) ,
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by list columns(course_name)(
partition p0 values  in('aiops','data analytics','Dl','RL'),
partition p1 values  in('fsds' ,'big data','blockchain'),
partition p2 values  in('MERN','java','interview prep','fsda')
)

insert ignore into ineuron_courses9 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019)

select partition_name , table_name , table_rows from information_schema.partitions where table_name = 'ineuron_courses8'
______________________________________________________________________________________________________________________

create table ineuron_courses10(
course_name varchar(50),
course_id int(10),
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by range(course_launch_year)
subpartition by hash(course_launch_year)
subpartitions 5 (
partition p0 values less than (2019) ,
partition p1 values less than (2020) ,
partition p2 values less than (2021) ,
partition p3 values less than (2022) 
);

insert ignore into ineuron_courses9 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019)

select partition_name , table_name , table_rows from information_schema.partitions where table_name = 'ineuron_courses10'
