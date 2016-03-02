SELECT dept.dname, dept.numphds
FROM dept
WHERE dept.dname NOT IN
      (SELECT maj.dname
      FROM major maj, 
      	   (SELECT S.sid csid
	   FROM enroll E, student S, course C
	   WHERE E.sid = S.sid
	   AND E.cno = C.cno
	   AND E.dname = 'Computer Sciences') cs
	   WHERE maj.sid = cs.csid);
