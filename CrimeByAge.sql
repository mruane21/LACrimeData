alter procedure usp_CrimeByAge
as

select 
	 VictimAge, count(DRNumber) TotalCrime
from crimez
where DateOccurred BETWEEN '01/01/2018' AND '12/31/2018'
	  AND
	  VictimAge <> 0

group by VictimAge
order by TotalCrime DESC