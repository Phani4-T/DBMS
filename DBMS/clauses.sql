create table stud1(st_id number(5),s_name char(20),marks number(4));
insert into stud1 values(101,'sumit',78);
insert into stud1 values(102,'ashu',79);
insert into stud1 values(103,'shreya',85);
insert into stud1 values(104,'kuku',76);
insert into stud1 values(105,'tiwari',87);
insert into stud1 values(106,'ramu',65);
alter table stud1 add CONSTRAINT pk1 primary key(st_id);
desc stud1;
select * from stud1;
select s_name from stud1 where marks in(78,65,87);
select s_name from stud1 where marks not in(78,65,87);
select  s_name from stud1 where marks < any(78,65,87);
select s_name from stud1 where marks > any(78,65,87);
select s_name from stud1 where marks < all(78,76,87);
Select s_name from stud1 where marks >all(65,76);