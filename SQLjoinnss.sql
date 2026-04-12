use b27db

--join

--join we use to combine columns from  one or more tables 
---three different types of joins

--fetch all all products names whuch  are sold
select name from product where id in
(select distinct productid from productsale)
select name from product where id in
(select distinct productid from productsale)

select name from product where id in
(select distinct productid from productsale)

select distinct name 
from productsale inner join product
on productsale.productid =product.id

--fetch all product names and total sold quantity

select name,(select sum(quantitysold) from productsale where productid =
product.id) as product from product

select name,sum(quantitysold) as total
from productsale inner join product
on productsale.productid = product.id
group by name 

select * from  student 
select * from trainer 

--inner join

select name as sname,trainername as mentor
from  student inner join trainer
on student.trainerid = trainer.id

select name , trainername 
from  student s left join trainer t
on s.trainerid =t.id

select name as studentname ,trainername as trainer
from student right join trainer
on student.trainerid = trainer.id

select * from student 
select * from trainer

select name,trainername
from student s join trainer t
on s.trainerid = t.id

select name as student ,trainername as tname 
from student s full join trainer t
on s.trainerid = t.id

--cross join 

select name as student ,trainername as trainer
from student s cross join trainer t 

create table employee
(id int,name varchar(50),managerid int
)

drop table employee

insert into employee values (1,'dhananjay',4),(2,'shweta',3),(3,'naresh',5),
(4,'pranali',null),(5,'ashish',3)

select * from employee

select id,name,managerid from employee

select e.name,m.name
from employee e left join employee m
on e.managerid = m.id



--managername | numberofemployeesreporting

select m.name as managername, count(e.id) as total
from employee e left join employee m
on e.managerid =m.id
group by m.name

select m.name as managername,count(e.id) as total
from employee e left join employee m
on e.managerid = m.id
group by m.name

select e.name as employeename ,m.name as managername 
from employee e cross join employee m

--advanced join 

select * from  trainer 
select * from student 

--only uncommon data from left table

select * from student s left join trainer t 
on s.trainerid = t.id
where t.id is null
--OR
select * from student where trainerid is null


--only uncommon records from right table (trainer)

select * 
from  student s right join trainer t on s.trainerid = t.id
where s.rollnumber is null

--uncommon records from right and left table 
select *
from  student s full join trainer t 
on s.trainerid = t.id
where t.id is null or s.rollnumber is null

--fetch all products name which are sold

select distinct  p.name
from productsale ps left join product p
on ps.productid = p.id

--fetch all product name which are not sold 
select distinct p.name
from product p right join productsale ps
on p.id = ps.productid

select * from product
select * from productsale 

select distinct p.name
from productsale ps right join product p
on ps.productid = p.id
where ps.saleid is null


--joining table without pk fk relation 

create table table1 (col1 varchar(20))
insert into table1 values ('abhi'),('ashish'),('balu'),('baldev')

create table table2 (col1 varchar(30))
insert into table2 values ('abhi'),('ashish'),('devil'),('erfan')
insert into table2 values ('balu')

select * from table1
select * from table2

select t1.col1,t2.col1
from table1 t1 join table2 t2 on t1.col1 = t2.col1
-- 3 records 

select t1.col1,t2.col1
from table1 t1 left join table2  t2 on t1.col1 = t2.col1
--4 records 

select t1.col1,t2.col1
from table1 t1 right join table2 t2 on t1.col1 = t2.col1 