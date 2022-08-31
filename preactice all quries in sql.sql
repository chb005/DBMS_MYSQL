
show tables
desc geo

select * from sales

select SaleDate,Amount,Boxes from sales

select GeoID,SaleDate,Boxes,Amount,Amount/boxes as amtperbox from sales

select GeoID,SaleDate,Boxes,Amount,Amount/boxes 'amount per box' from sales

select GeoID,SaleDate,Boxes,Amount,Amount/boxes as amtperbox from sales where amount>6500 order by amount desc

select * from sales

select count(*) as amont from sales

select * from sales 
where GeoID='G1' order by PID,Amount desc

select count(*)as count_amount from sales where amount>10000 and SaleDate>"2022-03-01"

select * from sales where amount>10000 and year(SaleDate)=2022 order by amount desc

select * from sales where Boxes>5 and Boxes<50 order by boxes desc

select  * from sales where boxes between 0 and 50 order by boxes desc

select  * from sales where boxes in (0,1,4,6,24) order by boxes desc
	
select amount,weekday(SaleDate) from sales where weekday(SaleDate)=4    

select * from people  where team="jucies" or team="Delish" order by team

select * from people

select * from people where team in("Delish","jucies") order by team

select * from people where salesperson like 'd%' 

select * from people where salesperson like '%d%' 
select * from sales

select SaleDate,Amount,
	case when Amount<1000 then "under 1k"
		 when Amount<5000 then "under 5k"
         when Amount<10000 then "under 10k"
    else "10k or more"
    end as "Amount Category"
    
from sales    
         