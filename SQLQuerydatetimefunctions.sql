
use b27db

--time()
declare @time time = getdate()
select @time -- 11:18:05.5733333

--smalldatetime()
declare @smalldatetime smalldatetime = getdate()
select @smalldatetime -- 2026-04-17 11:20:00

--datetime()
declare @datetime datetime = getdate()
  select @datetime -- 2026-04-17 11:21:13.980

  --datetime2()
  declare @datetime2 datetime2 = getdate()
  select @datetime2 -- 2026-04-17 11:23:05.5866667

  set @datetime2 = sysdatetime()
  select @datetime2--2026-04-17 11:57:07.2335499

  declare @datetime21 datetime2(3) =  sysdatetime()
  select @datetime21 -- 2026-04-17 12:01:23.445
  -- 3 precision

  declare @datetimeoffset datetimeoffset = sysdatetimeoffset()
  select @datetimeoffset -- 2026-04-17 12:03:24.9067602 +05:30

  --few more functions 

 select  isdate('01/01/1990')-- 1
  select isdate('31/02/2026')-- 0

   declare @today datetime2 = sysdatetime()
   --day()
   select day(@today) --17

   --month()
   select month(@today) -- 4
    
	--year()
	select year(@today) -- 2026

	--datename()
--datename() returns given date part from input date

declare @today1 datetime2 = sysdatetime()
print datename(day,@today1)--17

print datepart(dayofyear ,@today1)--107
print datename(dayofyear,@today1) -- 107

print datepart(month , @today1)-- 4
print datename(month , @today1) -- APRIL

print datepart(year,@today1) --2026
print datepart(year,@today1) --2026

print datename(quarter ,@today1) -- 2
print datepart(quarter,@today1) -- 2

print datename(hour, @today1) -- 12
print datepart (hour,@today1) -- 12

--prove datename() returns varchar , datepart() returns
--int 

print datename(day,getdate()) + datename(day,getdate()) -- 1717
print datepart(day,getdate()) + datepart(day,getdate()) -- 34

--dateadd()
declare @today3 date = getdate()
print dateadd(day,3,@today3)--2026-04-20

print dateadd(month , 8,@today3)--2026-12-17

print dateadd(day , -9, @today3) --2026-04-08

--datediff()
 declare @dob date = '2026 - 01 - 16'
 declare @today5 date = getdate()

 print datediff(day,@dob,@today5) --  -152
 print datediff(day ,@dob,@today5) --91


 set @dob  = '1990 - 09 -16'
 print datediff(day,@dob,@today5) --12997
 print datediff(month,@dob,@today5) --427

 print datediff(year ,@dob ,@today5) -- 36

 print datediff(month,'2026 - 04 -01','2026 - 03 -30')
 -- 0

 print datediff(year,'2025 - 12 - 31','2026 - 01 -01') -- 1
 




