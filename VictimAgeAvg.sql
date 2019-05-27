select AVG(VictimAge)

from crimez
where 
	  DateOccurred BETWEEN '01/01/2018' AND '12/31/2018'
  AND VictimAge <> 0