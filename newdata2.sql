use practice

create table if not exists merchant(mername varchar(30),
amount int(10),
payment_mode varchar(30))

select * from  merchant

insert into merchant(mername,amount,payment_mode) values ('chirag',520,'CASH')
insert into merchant(mername,amount,payment_mode) values ('chirag',150,'ONLINE')
insert into merchant(mername,amount,payment_mode) values ('dipak',450,'ONLINE')
insert into merchant(mername,amount,payment_mode) values ('mayur',720,'CASH')
insert into merchant(mername,amount,payment_mode) values ('dipak',580,'ONLINE')
insert into merchant(mername,amount,payment_mode) values ('mayur',820,'CASH')


select student_id,
        sum(case when  subject="English" then marks else 0 end) as English,
        sum(case when  subject="Science" then marks else 0 end) as Science,
        sum(case when  subject="Maths" then marks else 0 end) as Maths
        from student group by student_id;
        
        
select mername,
sum(case when payment_mode="ONLINE" then amount else 0 end) as Online2,
sum(case when payment_mode="CASH" then amount else 0 end) as Cash   
from merchant group by mername;        
