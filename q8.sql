SELECT S.sname
FROM student S,
(SELECT CC.sid, CC.cc
FROM (SELECT E.sid, count(*) cc
                FROM enroll E
                GROUP BY E.sid) CC
WHERE CC.cc = 
(SELECT MAX(Cs.c)
	FROM
	(SELECT count(*) c
		FROM enroll
		GROUP BY sid) Cs)) max_c
WHERE max_c.sid = S.sid;
