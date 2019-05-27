alter procedure usp_CrimesByDescription
as

Select top 10
	CrimeCode, CrimeCodeDescription,
	count(DRNumber) TotalCrimes
From crimez

Group by CrimeCode, CrimeCodeDescription
Order by TotalCrimes DESC
