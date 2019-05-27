alter procedure usp_TotalNumberOfCrimes
as

select top 10 
		AreaName,AreaID,
		count(DRNumber) TotalNumberOfCrimes
from crimez
where DateOccurred BETWEEN '01/01/2018' AND '12/31/2018'
	  
Group by AreaID , AreaName
Order by TotalNumberOfCrimes DESC

