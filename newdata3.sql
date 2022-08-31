use practice

create table if not exists col11(col1 int(5))
create table if not exists col22(col2 int(5))

select * from col11

select * from col22

insert into col11 values(1)
insert into col11 values(2);
insert into col11 values(1);
insert into col11 values(5);
insert into col11 values(NULL);
insert into col11 values(NULL);

insert into col22 values(null);
insert into col22 values(2);
insert into col22 values(5);
insert into col22 values(5);

select * from col11 inner join col22 on col11.col1=col22.col2 

select * from col11 inner join col22 on col11.col1=col22.col2 or (col11.col1 is null and col22.col2 is null);

select * from col11 inner join col22 on col11.col1 <=> col22.col2
