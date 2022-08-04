/* create a UDF which will be able to check a total number of records avaible in your table  */

use sales2

# select count(*) as first from sales1;

delimiter $$

create function chkrec21()
returns int
deterministic 
begin
#declare c int;
	    SELECT COUNT(*)  FROM sales1;
#select @c;
   
    
    
end $$

select chkrec21()


