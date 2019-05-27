--change procedure 
alter procedure usp_NHollywoodCrime
as
select top 10 
			  AreaName,
			  AreaID, 
			  CrimeCode, 
			  CrimeCodeDescription,
			  count(DRNUmber) TotalCrime
	    
from crimez
--change area ID to for different areas
where AreaID = 15
group by AreaName, AreaID, CrimeCode, CrimeCodeDescription
order by AreaName, TotalCrime DESC