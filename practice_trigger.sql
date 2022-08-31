# create a table col = name , mail_id,phone_number , address , users_sys, time_sys,salary,incentive,final_salary
# try to time all the time that uses name should start with s for each and every insert op

use triggers_prac1;

create table new1(
fname varchar(20),
mail_id varchar(30),
contact int(30),
address varchar(80),
salary int(8),
incentive int(5),
final_salary int (8));

insert into new1 values("chirag",'chjb01@gmail.com',8585896,'kalol',52800,8,56000);
select * from new1;

create table test22(
fname varchar(20),
mail_id varchar(30),
contact int(30),
address varchar(80),
salary int(8),
incentive int(5),
final_salary int (8),
sysdate date,
user1 varchar(520));

select * from test22;

delimiter //
create trigger to_insert_emp12
before insert on new1 for each row 
begin
	insert into test22(fname,mail_id,contact,salary,incentive,final_salary,sysdate,user1) values(new.fname, new.mail_id,
    new.contact,new.salary,new.incentive,new.final_salary,sysdate() , user());
       # insert into ref_ values(sysdate() , user_val);

end; //

SHOW TRIGGERS;

DROP TRIGGER to_insert_emp11


insert into new1 values("dipak123",'4dfk1b01@gmail.com',54385896,'gandhinagar',528005,(528005*0.08),543000);
