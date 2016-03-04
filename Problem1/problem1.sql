CREATE TABLE Emp (
eid int, ename varchar(30), age int, salary float,
PRIMARY KEY (eid), CHECK (salary >= 2000)
	CREATE ASSERTION ManagerSalary
	CHECK
	(NOT EXISTS (SELECT E.eid, E.salary, D.mangerid
	     FROM Dep D, Emp E
	          WHERE E.eid = D.managerid 
		       AND E.salary < 
		       (SELECT E1.salary
		        FROM Emp E1, Works W1
		        WHERE E1.eid = W1.eid 
		        AND W1.did = D.did 
		        AND E1.eid <> E.eid))))

CREATE TABLE Works(
eid int, did int, pct_time float,
PRIMARY KEY (eid, did)
	CHECK (pct_time < 1))

CREATE TABLE Dept(
did int, budget float, 
managerid int, 
FOREIGN KEY (managerid), REFERENCES  Emp(eid) 
	CHECK (2 <=
	(SELECT COUNT(*)
	 FROM Dept D
	 GROUP BY D.managerid)))