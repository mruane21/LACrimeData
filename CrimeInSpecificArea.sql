alter procedure usp_CrimeInSpecificArea
@Area int
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
where     AreaID = @Area
	  AND DateOccurred BETWEEN '01/01/2018' AND '12/31/2018'
