
use b27db



--subquery

create table student
(
rollnumber int,name varchar(50),city varchar(50))


insert into student values (1,'pranali','pune'),(2,'sakshi','mumbai'),(3,'asmita','satara')

drop table trainer
create table trainer 
(id int,name varchar(50),studentrollnumber int)

insert into trainer values (1,'vikul',1),(2,'usha',3),(3,'atul',3)
insert into trainer (id,name,studentrollnumber) values (4,'dipak',null)

select * from trainer

--name the students allted trainer

select distinct studentrollnumber from trainer

select name from student where rollnumber in
(select distinct studentrollnumber from trainer)

--name the trainer alloted by student

select name from trainer where id in (select distinct rollnumber from student)

drop table student 
drop table trainer
drop table employee
create table employee
(empid int primary key identity,
empname varchar(50) not null,
deptname varchar(50),
salary int)

insert into employee values ('rosy','HR',50000),('robin','IT',40000),
('july','finance',60000),('musin','IT',30000),('javed','HR',70000)

select * from employee

--question find the employee whos salary is more than the average salary earned 
--by all employee

select * from employee
where salary > (select avg(salary) from employee)

