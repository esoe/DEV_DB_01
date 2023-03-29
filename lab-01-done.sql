select * from "HR"."Employees";
select * from "Sales"."Customers";
select * from "Sales"."Orders";
select * from "Sales"."OrderDetails";
select * from "Production"."Products";
select country, region, city from "Sales"."Customers";
select productname, unitprice from "Production"."Products" order by unitprice desc;

select firstname as "Имя"
		, lastname as "Фамилия"
		, regexp_replace('mail@domain.region', 'mail', firstname||'.'||lastname) as "e-mail адрес"
from "HR"."Employees";


select categoryid as "Номер категории",
		productname as "Название продукта"
		,
		case
			when categoryid=1 then 'Beverages'
			when categoryid=2 then 'Condiments'
			when categoryid=3 then 'Confections'
			when categoryid=4 then 'Dairy Products'
			when categoryid=5 then 'Grains/Cereals'
			when categoryid=6 then 'Meat/Poultry'
			when categoryid=7 then 'Produce'
			when categoryid=8 then 'Seafood'
			else 'Other'
		end "Название категории"
from "Production"."Products";

select contactname,
	split_part(contactname, ',', 1) as "LName",
	split_part(contactname, ',', 2) as "Fname" 
from "Sales"."Customers";


select unitprice
	, qty
	, (unitprice*qty*(1 - discount)) as LineTotal
from "Sales"."OrderDetails";

select * 
from "Production"."Products"
order by unitprice desc 
limit 10;

select *
from "Sales"."Orders"
limit 50 offset 51;


