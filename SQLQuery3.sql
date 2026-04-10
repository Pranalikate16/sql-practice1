
use b27db

select * from product
select * from productsales 

--revenue

select name,price,
(select sum(quantitysold)* product.price from productsales)as TOTAL
from product

--find products whose price is greater than 
--average price of all products

select avg(price) from product

select name,price,
from product
where price >
(select avg(price)from product )

--find the most expensive product using subquery

select max(price) from product

select name,price
from product
where price = (select max(price) from product)

--find products whose price is equal to minimum price

select min(price) from product

select name,price
from product
where price =(select min(price)from product)

--find products that belongs to the same category as 'mobile'

select name,category
from product where category =
(select category from product where name = 'mobile')

--Find products whose price is greater than price of product 'chair'

select sum(price) from product 

select name ,price 
from product where price >(select price
from product where name ='chair')

--find products that were sold at least once 

select name from product where exists (select 1 from productsales
where productid = product.id)

--find products whose total quantity sold is greater than average
 --quantity sold

 select avg(quantitysold) from productsales 

 select name from product 
 where id in (select productid from productsales group by
  productid having
   sum(quantitysold)>(select avg(quantitysold) from productsales))

   --find the product with highest total quantity sold

   select name from product 
 where id =  (select top 1 productid from productsales
 group by productid 
 order by sum(quantitysold) desc)
 
