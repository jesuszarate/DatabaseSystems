select Q.pname, Q.s
from
(select pname, count(*) s from section group by pname) Q
where Q.s = 
	(select  max(T.s)
	from
	(select pname, count(*) s from section group by pname)T);


