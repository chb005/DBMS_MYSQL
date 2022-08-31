create database if not exists hrdata

use hrdata


CREATE TABLE newhr (
	`EmployeeCode` VARCHAR(10) NOT NULL, 
	`EmployeeName` VARCHAR(21) NOT NULL, 
	`Gender` VARCHAR(10) NOT NULL, 
	`DateOfBirth` VARCHAR(9) NOT NULL, 
	`DateOfJoining` VARCHAR(9) NOT NULL, 
	`Religion` VARCHAR(9) NOT NULL, 
	`MaritalStatus` VARCHAR(10) NOT NULL, 
	`EmployeeStatus` VARCHAR(10) NOT NULL, 
	`EditedTime` VARCHAR(9), 
	`Department` VARCHAR(14) NOT NULL, 
	`Skill Level` VARCHAR(12) NOT NULL, 
	`Skill Name` VARCHAR(29) NOT NULL, 
	`Salary` DECIMAL(38, 0) NOT NULL, 
	`CL` DECIMAL(38, 0) NOT NULL, 
	`EL` DECIMAL(38, 0) NOT NULL, 
	`ResignReason` VARCHAR(13)
);

select count(*) from newhr

    
LOAD DATA INFILE  
'E:/hrdata.csv'
into table newhr
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;

select count(*) as hindu from newhr where Religion="HINDU"

select count(*) from newhr

select * from newhr

select * from newhr where limit 5