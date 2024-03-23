create TABLE student3(sno INTEGER,sname VARCHAR2(30),saddress VARCHAR2(30),dob DATE,sub1 INTEGER,sub2 INTEGER,sub3 INTEGER,Total INTEGER);
select * from student3;
insert into student3 VALUES(1,'phani','NSP','09-05-2004',25,26,29,80);
insert into student3 VALUES(2,'murali','PKL','10-08-2004',29,26,29,84);
insert into student3 VALUES(3,'vishwa','BVRM','27-07-2003',25,24,27,76);
insert into student3 VALUES(4,'sasidhar','BVRM','19-03-2003',25,25,20,70);
GRANT INSERT ON student3 TO aidsh7;

REVOKE SELECT ON student3 FROM aidsh7;
select * from aidsh7.student;
INSERT INTO aidsh7.student(rno,sname,address) values(4,'phani','NSP');
select * from student3;
select * from aids11.std11;
