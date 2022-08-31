create database if not exists practice

use practice

create table if not exists student(student_id int(10),
subject varchar(30),
marks int(10))

select  * from student where marks<>80

insert into student(student_id,subject,marks) values (1001,'English',88)
insert into student(student_id,subject,marks) values (1001,'Science',90)
insert into student(student_id,subject,marks) values (1001,'Maths',85)
insert into student(student_id,subject,marks) values (1002,'English',70)
insert into student(student_id,subject,marks) values (1002,'Science',80)
insert into student(student_id,subject,marks) values (1002,'Maths',83)



select marks, subject, 
case 
when marks > 80 then "good"
else "not good"
end
from student;

select student_id,
        sum(case when  subject="English" then marks else 0 end) as English,
        sum(case when  subject="Science" then marks else 0 end) as Science,
        sum(case when  subject="Maths" then marks else 0 end) as Maths
        from student group by student_id;



