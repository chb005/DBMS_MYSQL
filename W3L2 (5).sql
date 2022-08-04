/*  create a UDF to find out a log base 10 of any given number   */

select log10(8)

delimiter $$

create function lognum132(a double(10,8))
returns double(10,8)
deterministic 
begin

	declare c double(10,8);
    set c=log10(a);
    return c;
    
end $$

select lognum132(8) as log10vaue
