CREATE TABLE Emp (
eid int, ename varchar(30), age int, salary float,
PRIMARY KEY (eid), CHECK (salary >= 2000))

CREATE TABLE Works(
eid int, did int, pct time float,
PRIMARY KEY (eid, did))

CREATE TABLE Dept(
did int, budget float, 
managerid int, 
FOREIGN KEY (managerid), REFERENCES  Emp(eid))
