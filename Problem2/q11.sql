SELECT maj.sid, maj.dname
FROM major maj,
      (SELECT E.sid
       FROM enroll E
       WHERE E.dname != 'Computer Sciences') E
WHERE maj.sid = E.sid  AND maj.dname != 'Computer Sciences';
