select curdate()

/*  create a user defined function to find out a date differences in number of days */

delimiter $$

create function date_diff(a date,b date )
returns int
deterministic 
begin

	declare c int;
    set c=datediff(a,b);
    return c;
    
end $$

select date_diff(CURDATE(),'2016-02-01')   as numdays