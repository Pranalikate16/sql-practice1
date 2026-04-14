
use b27db

select * from student26

--while loop


DECLARE @I INT = 1;
WHILE @I <= 5
BEGIN 
PRINT @I;
SET @I = @I + 1
END 

declare @i int = 1
while @i <= 10
begin 
if @i = 5

break ;

print @i;
set @i = @i + 1;
end;

--while loop with continue

DECLARE @I INT = 0
while @i < 5
begin 
set @i = @i + 1

if @i = 3
continue;
print @i
end 

declare @i int = 0
while @i < 5
begin
set @i = @i + 1

if @i = 3
continue;
print @i
end

declare @i int = 0
while @i < 5
begin 
set @i= @i + 1
 
 if @i = 3
 continue 
 print @i
 end 

 --conditional statement 

 select * from student26 

 --conditional statement 

 select * from student26

 if exists(select name from student26 where name ='pranali')
 print 'student exists'
 else
 print 'student not exists '

 if  not exists(select name from student26 where name = 'vihir')
begin 
   insert  into student26 values(8,'vihir','v@com')
    print 'student inserted successfully'
end 
else
   begin 
       print 'student inserted failed'
   end 

   select * from student26

   declare @num1 int = null
   declare @num2 int = null

   if (@num1 = @num2)

   print 'EQUAL'

   else

   print 'not equal'

--loops in sql 
 declare @start int = 1
 while (@start <= 5)
 begin 
   print @start
    set @start = @start + 1
	end 

	declare @start int = 1
	while (@start <= 5)

	declare @start int = 2
	while (@start <= 5)
	begin
	print @start
	set @start =@start +1
	end

	declare @start int  = 3
	while(@start <= 10)
	begin
	print 
	@start
	set @start = @start + 1
	end 

	declare @start  int = 30
	while (@start <=60)
	begin print @start
	set @start = @start + 1
	end 

	declare @start int = 10
	while(@start <= 50)
	begin
	print @start 
	set @start = @start + 1
	end 

	create table dummyproducts
	(id int ,name varchar(500),description varchar(200))

	--insert around 2 hundred rerords for testing purpose 

	declare @counter int = 1 
	while (@counter <= 2000)
	begin 
	  insert into dummyproducts values (@counter ,'productname'+
	  cast(@counter as varchar(7)),
	  'product description' + cast (@counter as varchar(7)))
	  set @counter = @counter + 1
	  end 
	  select count(id) from dummyproducts

	  select * from dummyproducts

	  select * from dummyproducts where id % 2 = 0

	  declare @counter int = 2
	  while (@counter <= 1000)
	  begin 
	  insert into dummyproducts values (@counter ,'productname'+
	  cast(@counter as varchar(7)),
	  'product description' + cast(@counter as varchar(7)))
	  set @counter = @counter + 1
	  end 
	  select count(id) from dummyproducts

	  --case statement 

	  declare @month int = 12
	  select case
	    when @month = 1 then 'jan'
		when @month = 2 then 'feb'
		when @month = 3 then 'mar'
		when @month = 4 then 'apr'
		when @month = 5 then 'may'
		when @month = 6 then 'jun'
		when @month = 7 then 'jul'
		when @month = 8 then 'aug'
		when @month = 9 then 'sep'
		when @month = 10 then 'oct'
		when @month = 11 then 'nov'
		when @month = 12 then 'dec'
		else 'invalid month'
		end 
		select * from student26 


		select name ,gender,
		(case when gender = 'male' then 'BHAI'
		when gender = 'female' then 'BAHAN'
		else 'invalid gender'end )as newgender 
		from student26

		--conditional statement 
		--loops
		--case statement 

		create table student 
		(number int ,name varchar(50),gender varchar(50),marks int)
		insert into student values (1,'rutya','male',75),
		(2,'pranali','female',60),(3,'supriya','female',50),
		(4,'ashwini','female',40),(5,'bharti','female',90),
		(6,'vijay','male',80)
		select * from student 


		declare @marks int  = 75

		if 30> @marks 
		print 'fail'
		else 
		print 'pass'

		use b27db

		--if else if else 

		declare @marks int = 85
		if @marks >= 80
		print 'distinction'
		else if @marks >= 60
		print 'first class'
		else 
		print 'pass'

		--case statement 

		declare @num int = 2 
		select 
		case @num
		when 1 then 'one'
		when 2 then 'two'
		else 'other'
		end 

		--check if number is even or odd

		declare @num int  = 3
if @num % 2 = 0
print 'even'
else print 'odd'

declare @num int = 8

if @num % 2 = 0
print 'even'
else print 'odd'
declare @num int = 11
if @num % 2 =0
print 'even'
else 
print 'odd'


--check if age is eligible for voting (>=18)

declare @age int =20
if @age >= 18
print 'eligible'
else print 
'not eligible '

--categorized marks 
declare @marks  int  = 75

if @marks  < 40
print 'fail'
else if @marks >= 75

print 'distinction'
else print 'pass'
select * from employee
--show salary grade using case

declare @salary int = 70000
select case 
when salary >= 60000 then 'high'
when salary > = 40000 then 'medium'
else 'low'
end as salary_grade
from employee

declare @num int  = 3 

if @num % 2 = 0
print 'even'
else 
print 'odd'

--voting age 

declare @age int = 18
if 
@age >= 18 
print 'eligible '
else print 'not eligible '

--marks result 

declare @marks int = 45
if 
@marks <= 35
print 'fail'
else 
print 
'pass'

--salary grade 

declare @salary int = 25000
select case
when @salary > 50000 then 'high'
when @salary < 20000 then 'low'
else 'medium'
end as salary from employee

--positive negative number 

declare @num int = -2
if 
@num > 0
print 'positive'
else print 'negative '

--number is zero or not 
 declare @num int = 0
 if 
 @num = 0
 print 'zero'
 else 
 print 
 'not zero'

 --greater number 

 declare @a int = 10
 declare @b int = 20
  if 
  @b > @a
  print 'big'
   else 
  print 'small'

  --simple grade 

  declare @marks int = 35
  if @marks >= 90
  print'A GRADE'
  else 
  if
  @marks >=60
  print 'B grade '

  else 
  
  print 'c grade'


  --using case 

  declare @marks int = 60
  select case
  when @marks >= 80 then 'grade A'
  when @marks >= 70 then 'grade B'
  else 
  'c grade'
  end as grade 

