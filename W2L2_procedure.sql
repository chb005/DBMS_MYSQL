delimiter &&
create procedure chb()
begin
    select * from chb_practice.bank_details;
end &&

call chb()
____________________________________________________________________________________________________
delimiter &&
create procedure max_blc()
begin
select * from chb_practice.bank_details where balance in (select max(balance) from bank_details);
end &&

call max_blc()
_____________________________________________________________________________________________________
delimiter &&
create procedure avg_blc_job(in chb varchar(30))
begin
select avg(balance) from bank_details where job =chb;
end &&

call avg_blc_job('technician')
_____________________________________________________________________________________________________
DELIMITER &&
create procedure sel_edu_job11(in v1 varchar(30) , in v2 varchar(30) ) 
BEGIN
	select count(*) from bank_details where education = v1 and job = v2;
END &&

call sel_edu_job1('secondary' , 'technician')