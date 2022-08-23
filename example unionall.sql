create database if not exists uni1

use uni1


ALTER TABLE tab1 rename column `Enrollment No` to Enrollment_no;

ALTER TABLE tab1 rename column `PRACTICAL (40)` to Practicals;

ALTER TABLE tab1 rename column `SESSIONAL (40)` to Sessional;
ALTER TABLE tab1 rename column `STUDENT NAME` to Student_name;

ALTER TABLE tab2 rename column `Enrollment No` to Enrollment_no;

ALTER TABLE tab2 rename column `PRACTICAL (20)` to Practicals;

ALTER TABLE tab2 rename column `TERM WORK (30)` to Sessional;

ALTER TABLE tab2 rename column `STUDENT NAME` to Student_name;


select Enrollment_no,Student_name,Practicals,Sessional from tab1
union all
select Enrollment_no,Student_name,Practicals,Sessional from tab2


