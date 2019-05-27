alter procedure usp_CrimeInSpecificMonth
@Month date
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
where DateOccurred = @Month
AND DateOccurred BETWEEN '01/01/2018' AND '12/31/2018'