CREATE TABLE test.userlog (TickTime double, Speed double, Day int) ENGINE=Memory

SELECT TickTime, Day FROM test.userlog 
WHERE (Day=7 and Speed > 3763464) or (Day=1 and Speed > 5287393) or (Day=2 and Speed > 5377446)

SELECT TickTime, Day FROM test.userlog 
(SELECT median(Speed) as med, Day as d FROM test.userlog 
group by Day) b
WHERE b.med < Speed and b.Day = Day