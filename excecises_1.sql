# Print details of shipments (sales) where amounts are > 2,000 and boxes are <100?
# How many shipments (sales) each of the sales persons had in the month of January 2022?
# Which product sells more boxes? Milk Bars or Eclairs?
# Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?
# Which shipments had under 100 customers & under 100 boxes? Did any of them occur on Wednesday?

select * from sales where amount>2000 and boxes<100
select * from people

select p.salesperson,count(*) 
from sales s
join people p on p.spid=s.spid
where saledate between '2022-01-01' and '2022-01-31' 	
group by p.salesperson

select p.Salesperson, count(*) as Shipment_Count
from sales s
join people p on s.spid = p.spid
where SaleDate between'2022-01-01' and '2022-01-31'
group by p.Salesperson;

;
select * from products;

select s.pid,pr.product,count(boxes) as "sold_boxes"
from sales s
join products pr on pr.pid=s.pid
where Product in ("Milk Bars","Eclairs")
group by Product;

select s.pid,pr.product,count(boxes) as "sold_boxes"
from sales s
join products pr on pr.pid=s.pid
where SaleDate between '2022-02-01' and '2022-02-07' and 
Product in ("Milk Bars","Eclairs")
group by Product;

select * from sales where Customers<100 and Boxes<100 and  DateName(saledate)="wednesday" ;

select * ,
case when weekday(saledate)=2 then 'wednesday'
else 'no wednesday'
end as 'day_wednesday'
from sales
where customers < 100 and boxes < 100
order by day_wednesday;
