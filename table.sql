create database pranali
create table student1
(
id int,
name varchar(50),
city varchar(50)
)
select id,name,city from student1
insert into student1 values (1,'ram','pune')
insert into student1 values(2,'rutik','mumbai')
insert into student1 values(3,'sudarshan','nagar')
update student1
set city = 'usa'
select* from student1
update student1
set city ='pune'
where id =1
select* from student1
update student1
set name ='pari',city='yavatmal'
where id=1
select * from student1
delete from student1 where id =3
select * from student1
create table product1 
(
id int,name char(10)
)
insert into product1 values(1,'shirt'),(2,'shoes'),(3,'pants')
select * from product1
create table product1
(id int,name varchar(50),isavailable bit
)
insert into product1 values(1,'shirt',1),(2,'pants',0)
select * from product1





