use pranali
create table student1
(rollnumber int,name varchar(50),gender varchar(10),age int,city varchar(50),mobile int,email varchar(50))
insert into student1 values(12,'vishal','male',25,'yavatmal',8934,'pran@.com')
insert into student1 values(1,'sakshi','female',15,'pune',1234,'an@.com')
insert into student1 values(7,'rutik','male',35,'nagar',234,'pr@.com')
insert into student1 values(8,'vaishnavi','female',20,'mumbai',134,'p@.com')
insert into student1 values(15,'vishal','male',32,'pune',124,'r@.com')
update student1
set email='s@.com' 
where rollnumber=12
select * from student1
delete from student1 where city='yavatmal'
select * from student1
select * from student1

insert into student1 values(10,'teja','female',6,'mumbai',637,'dj@.com')
insert into student1(rollnumber,gender,age,city,mobile,email)values
(17,'female',22,'mumbai',555,'unknown2.com')
insert into student1 values(8,null,'male',25,'pune',333,'ru@.com')

select * from student1

delete from student1 where rollnumber in(17,8)

select * from student1

alter table student1
alter column name varchar(50)not null
--insert into student1(rollnumber,gender,age,city,mobile,email)values
--(17,'female',22,'mumbai',555,'unknown2.com')
--Cannot insert the value NULL into column 'name', table 'pranali.dbo.student1'; column does not allow nulls. INSERT fails.
--The statement has been terminated.

select *from student1
insert into student1 values(12,'rutik','male',25,'pune',123,'dkd@.com')
delete from student1 where rollnumber=12

select * from student1
--primary key
alter table student1
alter column rollnumber int not null

alter table student1
add constraint PK_rollnumber primary key(rollnumber)

insert into student1 values(12,'pranali','female',25,'pune',345,'kd@.com')
insert into student1 values(13,'sudarshan','male',26,'nagar',980,'f@.com')
select * from student1
--unique key
insert into student1 values(53,'snehal','female',22,'pune',746,'uu@.com')
insert into student1 values(3,'nehal','female',21,'pune',786,'uw@.com')
insert into student1 values(23,'sneha','female',29,'pune',740,'ou@.com')

alter table student1

add constraint UK_mobile unique (mobile)
insert into student1 values(16,'shahaji','male',36,'pune',111,'fj@.com')

alter table student1
add constraint uk_email unique (email)
insert into student1 values(17,'shiv','male',56,'pune',101,'j@.com')
select * from student1

--check constraint

insert into student1 values(18,'sanket','male',22,'pune',102,'jh@.com')
select * from student1

alter table student1
add constraint ck_age check (age>=1 and age <= 150)

insert into student1 values(20,'vikas','male',145,'pune',940,'dhfh@.com')
select * from student1
--defalut constraint
insert into student1 (rollnumber,name,gender,age,city,mobile,email)
values(23,'shivani','female',43,'mumbai',989,'dd@.com')
select * from student1

alter table student1
add constraint df_city default 'pune' for city

 insert into student1(rollnumber,name,gender,city,age,mobile,email)
values(27,'ruthvik','male','pune',34,984,'jf@.com')

--constraints while creating table

create table studentnew
(rollnumber int primary key,
name varchar(50) not null,
gender varchar(20) check (gender ='male' or gender='female'),
mobile int unique,
city varchar(50) default 'pune')
select * from studentnew
 drop table studentnew










select * from student1
