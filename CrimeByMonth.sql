create procedure usp_CrimeByMonth
as

select  
	   cast(cast(month(dateoccurred) as varchar(2)) + '/1/' + cast(year(dateoccurred) as varchar(4))as date) MonthOccurred, 
       count(DRNumber) TotalNumberOfCrime

from crimez
where DateOccurred BETWEEN '01/01/2018' AND '12/31/2018'
group by cast(cast(month(dateoccurred) as varchar(2)) + '/1/' + cast(year(dateoccurred) as varchar(4))as date)
order by MonthOccurred