create database triggers_prac1;
use triggers_prac1;

create table test1(
c1 varchar(50),
c2 date,
c3 int);


create table test2(
c1 varchar(50),
c2 date,
c3 int );


create table test3(
c1 varchar(50),
c2 date,
c3 int );

delimiter //
create trigger to_update_others
before insert on test1 for each row 
begin
	insert into  test2 values("xyz",sysdate(),23354);
	insert into  test3 values("xyz",sysdate(),23354);
end; //

insert into test1 values ("abc",sysdate(),234234);


select * from test1;
select * from test2;
select * from test3;

SET SQL_SAFE_UPDATES = 0;

delimiter //
create trigger to_update_others_table 
after insert on test1 for each row 
begin
	update test2 set c1 = 'chirqg' where c1 = 'xyz';
	delete from test3 where c1 = 'xyz';
end; //


insert into test1 values ("krish",sysdate(),90077897)


delimiter //
create trigger to_delete_others_table 
after delete on test1 for each row 
begin
	insert into test3 values("after delete" , sysdate(), 435456);
end; //

select * from test1
select * from test3

delete from test1 where c1 = 'abc'

delimiter //
create trigger to_delete_others_before
before delete on test1 for each row 
begin
	insert into test3 values("after delete" , sysdate(), 435456);
end; //

delimiter //
create trigger to_delete_others_before_observation2
before delete on test1 for each row 
begin
	insert into test2(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //

select * from test2

delete from test1 where c1 = 'krish'






create table test11(
c1 varchar(50),
c2 date,
c3 int)


create table test12(
c1 varchar(50),
c2 date,
c3 int )


create table test13(
c1 varchar(50),
c2 date,
c3 int )

delimiter //
create trigger to_delete_others_before_observation3
before delete on test11 for each row 
begin
	insert into test12(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //

insert into test11 values("sudhanshu" , sysdate(), 435456);
select * from test11

delete from test11 where c1 = 'sudh'

select * from test12

delimiter //
create trigger to_delete_others_before_observation4
after delete on test11 for each row 
begin
	insert into test12(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //

delete from test11 where c1 = 'sudhanshu'

delimiter //
create trigger to_upate_others
after update on test11 for each row 
begin
	insert into test13(c1,c2,c3) values(old.c1, old.c2,old.c3);
end; //

select * from test11;
select * from test13;

insert into test11 values("sudh123",sysdate(),23435224)

update test11 set c1 = "after update" where c1 = "sudh123"


select * from  test12;

delimiter //
create trigger to_upate_others_before
before update on test11 for each row 
begin
	insert into test12(c1,c2,c3) values(new.c1, new.c2,new.c3);
end; //

update test11 set c1 = "insert new321" where c1 = "insert new"