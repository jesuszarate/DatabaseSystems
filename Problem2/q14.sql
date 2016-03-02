SELECT S.sname, MAX(A.ag)
FROM student S,
(SELECT E.sid, avg(grade) ag
          FROM enroll E
     	  GROUP BY E.sid) A
WHERE S.sid = A.sid;


