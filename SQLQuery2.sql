

drop table productsales
drop table product

drop view vwproductsales




create table product
(
ID int primary key,
Name varchar(50),
Price int
)

insert into product values (1,'TV',15000),(2,'Mobile',25000),
(3,'Laptop',50000)

select * from product
drop table productsales 
create table Productsales
(
Saleid int primary key,
Productid int foreign key references Product(id),
quantitysold int)

insert into productsales values (1,2,10),(2,3,15),(3,2,20),(4,2,5)

select * from productsales 

--using subquery
select name from product where id in
(select distinct productid from productsales)

--calculate total sold quantity
select name from product 



select name,
  (select sum(quantitysold)  from productsales where productid = product.id)as totalsoldquantity
  from product

  --total revenue 

  select name,price,
  (select sum(quantitysold)*product.price from productsales where productid =product.id)as total
  from product

  select quantitysold from productsales

  select sum(quantitysold) from productsales where productid = 1
  select name,
 ( select sum(quantitysold) from productsales where productid = product.id) from product

  select name,

  (select sum(quantitysold)from productsales where productid = product.id) from product

  --second highest paid fees
 -- select max (fees) from student 
 --where fees <
 --(select max(fees)
 --from student )

 


