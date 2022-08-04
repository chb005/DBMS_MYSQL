/* create a UDF which will be able to check a total number of records avaible in your table  */

use sales2

select profit from sales1 order by profit desc limit 4,1

delimiter $$

create function chkrec423()
returns int
deterministic 
begin

	    return (select profit from sales1 order by profit desc limit 4,1);
        
end $$

select chkrec423()


