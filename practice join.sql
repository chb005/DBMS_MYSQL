select * from sales

select * from people

select s.boxes,s.amount,s.spid,p.spid,p.salesperson 
from sales s join people p on s.spid=p.spid

select s.pid,s.amount,s.boxes,pr.pid,pr.product from sales s left join products pr on s.pid=pr.pid

select s.boxes,s.amount,s.spid,p.spid,p.salesperson ,pr.product
from sales s join people p on s.spid=p.spid
join products pr on s.pid=pr.pid

select s.boxes,s.amount,s.spid,p.spid,p.salesperson ,pr.product,p.team
from sales s join people p on s.spid=p.spid
join products pr on s.pid=pr.pid
where amount between 5000 and 7500 and p.team='Jucies'

select s.boxes,s.amount,s.spid,p.spid,p.salesperson ,pr.product,p.team,g.Geo
from sales s join people p on s.spid=p.spid
join products pr on s.pid=pr.pid
join geo g on g.geoid=s.Geoid
where amount between 5000 and 7500 and p.team=''
and g.Geo in ("New Zealand","Indian","USA")
order by Geo desc

select * from geo
