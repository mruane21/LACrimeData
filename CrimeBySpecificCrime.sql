alter procedure usp_CrimeBySpecificCrime
@Crime int
as

select DRNumber, 
	   DateReported,
	   DateOccurred,
	   TimeOccurred,
	   AreaName, 
	   AreaID, 
	   CrimeCode, 
	   CrimeCodeDescription,
	   VictimAge

from crimez
where CrimeCode = @Crime 
	  AND DateOccurred BETWEEN '01/01/2018' AND '12/31/2018'
