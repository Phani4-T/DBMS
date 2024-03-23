CREATE table student10(sid number(10) primary key,sname char(20),sage number(2),saddress varchar2(20),smarks number(3));
insert into student10 values(1,'PHANI',19,'NSP',88);
insert into student10 values(2,'JAYANTH',20,'ELR',85);
insert into student10 values(3,'BHARAT',20,'VSP',95); 
insert into student10 values(4,'MANI',19,'PKL',90);
insert into student10 values(5,'PAVAN',20,'PKL',87);
insert into student10 values(6,'VISHWA',19,'BVRM',80);
insert into student10 values(7,'AVINASH',19,'BVRM',89);
insert into student10 values(8,'SASIDHAR',20,'AMP',92);
insert into student10 values(9,'SATYA SAI',19,'',85);
insert into student10 values(10,'GNANA',20,'',99);
select * from student10;
select * from student10 where saddress is null;
select distinct(sage) from student10;
select sname,sage,smarks from student10 where sname like 'S%'; 
select sid,sname,sage from student10 where smarks>all(80,85,87);
select sid,sname,sage from student10 where smarks>any(85,88,90);
select sid,sname,sage from student10 where smarks in (85,88,92);
select * from student10 where sid between 4 and 9;
select * from student10 where sage>19 or smarks>90;
select * from student10 where sage>19 and smarks>85;
select * from student10 where not saddress='PKL';
select * from student10 order by smarks;