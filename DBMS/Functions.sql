/*CHARACTER FUNCTIONS */
select * from dual;
select ascii('a') from dual;
select chr(69) from dual;
select concat('Hello',' Everyone')from dual;
select INITCAP('a modern science student') from dual;
select instr('a modern science student','student') from dual;
select length('phanindra') from dual;
select lower('GOOD MORNING')from dual;
select upper('hello everyone') from dual;
select replace('a modern science','science','lifestyle') from dual;
select substr('Modern Science',7,14)from dual;
select lpad('goodmorning' ,15,'$') from dual;
select rpad('goodevening',15,'@')from dual;
select ltrim('#####hello','#') from dual;
select rtrim('Everyone@@@@@@@@@','@')from dual;
select trim('    Phanindra    ') from dual;
select trim('*' from '*****hello*****') from dual;
/*NUMBER FUNCTIONS */
select abs(10),abs(-10) from dual;
select mod(8,3) from dual;
select power(2,5) from dual;
select round(5.7689245)from dual;
select round(5.324178) from dual;
select sign(-89) from dual;
select sign(89) from dual;
select sqrt(16)from dual;
select trunc(5.78541,2) from dual;
/*CONVERSION FUNCTIONS*/
select to_char(123455768,'999,999,999')from dual;
select to_number('15,467',99999) from dual;
/*DATE & TIME FUNCTIONS */
select add_months('09-may-2003',7) from dual;
select last_day('09-may-2003') from dual;
select months_between('09-may-2023','09-may-2003')from dual;
select next_day('09-05-2003','friday') from dual;
select round(to_date('17-07-2003'),'MONTH')from dual;
select sysdate from dual;
select trunc(TO_DATE('09-05-2003'),'yyyy')from dual;
/*AGGREGATION FUNCTION*/
create TABLE student13(sno INTEGER,sname VARCHAR2(30),sub1 INTEGER,sub2 INTEGER,sub3 INTEGER,Total INTEGER);
insert into student13 VALUES(1,'phani',25,26,29,80);
insert into student13 VALUES(2,'murali',29,26,29,84);
insert into student13 VALUES(3,'vishwa',25,24,27,76);
insert into student13 VALUES(4,'sasidhar',25,25,20,70);
select * from student13;
select count(sno) from student13;
select sum(sub1)from student13;
select avg(Total) from student13;
select max(Total) from student13;
select min(Total) from student13;
commit