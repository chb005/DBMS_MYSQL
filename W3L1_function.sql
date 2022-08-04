use sales2

select * from sales1
_______________________________________________________________________________________________
delimiter $$

create function add_to_new(a int)
returns int
deterministic 
begin

	declare b int;
    set b=a+10;
    return b;
    
end $$

select add_to_new(25)    

select quantity, add_to_new(quantity) from sales1
_________________________________________________________________________________________________________

delimiter $$
create function final_profits(profit int, discount int)
returns int 
deterministic
begin
		declare final_profit int;
        set final_profit =profit-discount;
        return final_profit;
end $$

select * from sales1    

select profit, discount , final_profits(profit, discount) from sales1;	     
_________________________________________________________________________________________________________

DELIMITER $$
create function final_profits_real(profit decimal(20,6) , discount decimal(20,6) , sales decimal(20,6) )
returns int
Deterministic
Begin 
Declare final_profit int ;
set final_profit = profit - sales * discount ;
return final_profit;
end $$        
        
select profit, discount  ,sales ,  final_profits_real(profit, discount,sales) from sales1 ;     
______________________________________________________________________________________________________-

DELIMITER &&
create function int_to_str (a int)
returns varchar(30)
DETERMINISTIC
begin
declare b varchar(30);
set b = a;
return b;
end &&

select int_to_str(45)

select quantity , int_to_str(quantity) from sales1
__________________________________________________________________________________________________
select max(sales),min(sales) from sales1

1  - 100 - super affordable product 
100-300 - affordable 
300 - 600 - moderate price 
600 + - expensive 

DELIMITER &&
create function mark_sales3(sales int ) 
returns varchar(30)
DETERMINISTIC
begin 
declare flag_sales varchar(30);
if sales<=100 then
	set flag_sales="super affordable product";
 elseif sales > 100 and sales < 300 then
	set flag_sales="affordable";
 elseif sales > 300 and sales < 600 then
    set flag_sales="moderate price";
 else    
    set flag_sales="expensive";
 
 end if;
 return flag_sales;
 end &&
 
select mark_sales3(2565)

select sales,mark_sales3(sales) from sales1
______________________________________________________________________________________________
create table loop_table(val int)

Delimiter $$
create procedure insert_data()
Begin
set @var  = 10 ;
generate_data : loop
insert into loop_table values (@var);
set @var = @var + 1  ;
if @var  = 100 then 
	leave generate_data;
end if ;
end loop generate_data;
End $$

call insert_data()

select * from loop_table
____________________________________________________________________________________________
