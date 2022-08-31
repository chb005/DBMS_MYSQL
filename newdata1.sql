use practice

create table if not exists pair(a int,b int)

select * from pair

insert into pair(a,b) values(1,2)
insert into pair(a,b) values(3,2)
insert into pair(a,b) values(2,4)
insert into pair(a,b) values(2,1)
insert into pair(a,b) values(5,6)
insert into pair(a,b) values(4,2)

select * from pair t1 left join pair t2 on t1.b=t2.a and t1.a =t2.b

select * from pair t1 left join pair t2 on t1.b=t2.a and t1.a =t2.b where t2.a is null or 	t1.a < t2.a 

select t1.a,t1.b from pair t1 left join pair t2 on t1.b=t2.a and t1.a =t2.b where t2.a is null or 	t1.a < t2.a 