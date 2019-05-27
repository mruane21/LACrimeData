alter procedure usp_ViolentCrimeByDescription
as
Select top 5 
	CrimeCode, CrimeCodeDescription,
	count(DRNumber) TotalCrimes
From crimez
where 
	 CrimeCode = 624 
  OR CrimeCode = 230 
  OR CrimeCode = 626 
  OR CrimeCode = 210 
  OR CrimeCode = 236 
  OR CrimeCode = 121 
  OR CrimeCode = 122 
  OR CrimeCode = 235 
  OR CrimeCode = 441 
  OR CrimeCode = 110 
  OR CrimeCode = 815 
  OR CrimeCode = 753
Group by CrimeCode, CrimeCodeDescription
Order by TotalCrimes DESC
