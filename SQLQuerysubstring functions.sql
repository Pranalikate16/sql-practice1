
--substring 
declare @email4 varchar(50) = 'vihaan@gmail.com'
print @email4
print substring(@email4,1,6) --vihaan
print substring(@email4,8,9) -- gmail.com

--substring (column_name,start_position,lenght)
declare @email1 varchar(50) = 'pranalikate123@gmail.com'


--select charindex('@','pranalikate@gmail.com')

--extract domain from email 
select @email1 ,
substring(@email1,charindex('@',@email1)+ 1,len(@email1))--gmail.com

select @email1,
substring
(@email1,1,charindex('@',@email1)-1)--pranalikate123

create table #person
(
id int primary key identity,
name varchar(50),
email varchar(100)
)

insert into #person values('vishal','vishal@gmail.com'),
('atul','atul@gmail.com'),('vinit','vinit@hotmail.com'),
('mahesh','mahesh@reddifmail.com')

select * from #person 


select substring(email,charindex('@',email)+1 ,
len(email) - charindex('@',email))from #person

select substring(email,charindex('@',email)+ 1
len(email)- charindex('@',email)) from #person 

select substring(email,charindex('@',email)+  1 ,len(email) - charindex('@',email)),
count(id) as total
from #person
group by substring(email,charindex('@',email)+ 1,len(email) - charindex('@',email))

select substring(email,charindex('@',email)+ 1 , len(email) - charindex('@',email))
count (id) as total from #person
group by substring(email,charindex('@',email)+1 ,len(email) - charindex('@',email))


-- FIND MOST POPULAR DOMAIN

select top 1 substring(email,charindex('@',email)+ 1,len(email)-
charindex('@',email)),
count(id) as total
from #person
group by substring(email,charindex('@',email)+ 1,len(email) - charindex ('@'
,email))

--Mathematical functions

--abs()
select abs(-15) -- 15
select abs(-16.75) -- 16.75

--ceiling()
--to round demical / fractional number values 
--it takes upper closest integral value

--few more  date functions

 --isdate()
 select isdate('01/01/1990')
 select isdate('30/01/2025')

 declare @today datetime2 = sysdatetime()
 --day()
 select day(@today) --17

 --month()
 select month(@today) -- 4 



