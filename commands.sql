CREATE TABLE test.userlog (TickTime double, Speed double, Day int) ENGINE=Memory

SELECT TickTime, Day FROM test.userlog 
(SELECT median(Speed) as med, Day as d FROM test.userlog 
group by Day) b
WHERE b.med < Speed and b.Day = Day
