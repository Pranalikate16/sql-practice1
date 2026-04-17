
--FUNCTIONS TO GET CURRENT DATETIME

select getdate()--2026-04-17 10:10:25.243
select current_Timestamp--2026-04-17 10:11:13.830
select sysdatetime()--2026-04-17 10:12:29.4977338
select SYSDATETIMEOFFSET()--2026-04-17 10:14:51.0180935 +05:30
 
 select GETUTCDATE()--2026-04-17 04:46:13.227
 SELECT SYSUTCDATETIME()-- 2026-04-17 04:48:15.5585420 nano second precision

 --date related datatypes 
 --date 
 declare @date date = getdate()
 select @date--2026-04-17
 as DATE

 --time
 declare @time time = getdate()
 select @time --10:27:55.5200000

 --smalldatetime
 declare @smalldatetime smalldatetime = getdate()
 select @smalldatetime --2026-04-17 10:41:00