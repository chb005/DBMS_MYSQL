
use sales2

create table if not exists loop_table12(val1 int,val2 int)

Delimiter $$
create procedure insert_data431()
Begin
 DECLARE a INT Default 1 ;
   DECLARE b INT Default 1 ;
generate_data : loop
insert into loop_table12 values (a,b);
 SET a=a+1;
 set b=a*a;
if a = 15 then 
	leave generate_data;
end if ;
end loop generate_data;
End $$

call insert_data431()

select * from loop_table12