create table sailors(sid number(10),sname char(20),saddress varchar(20),rating number(5));
insert into sailors values(1,'Phani','NSP',8);
insert into sailors values(2,'Pavan','PKL',9);
insert into sailors values(3,'Jayanth','BVRM',5);
insert into sailors values(4,'VaraPrasad','AKIVIDU',1);
insert into sailors values(5,'Prasanth','BVRM',3);
select * from sailors;
set serveroutput on;
declare
    a number(10):=&a;
    c number(10);
begin
    select rating into c from sailors where sid=a;
    if c in(10,9,8) then
        dbms_output.put_line('Sailor'||a||'Grade A');
    elsif c in(7,6,5) then
        dbms_output.put_line('Sailor'||a||'Grade B');
    else
        dbms_output.put_line('Sailor'||a||'Grade B');
    end if;
    
end;
/
declare
    d number(10):=&d;
begin
    case d
    when 1 then 
        dbms_output.put_line('MONDAY');
    when 2 then 
        dbms_output.put_line('TUESDAY');
    when 3 then 
        dbms_output.put_line('WEDNESDAY');
    when 4 then 
        dbms_output.put_line('THURSDAY');
    when 5 then 
        dbms_output.put_line('FRIDAY');
    when 6 then 
        dbms_output.put_line('SATURDAY');
    when 7 then 
        dbms_output.put_line('SUNDAY');
    end case;
end;
/

declare
    i number(10);
    n number(10):=&n;
    c number(10):=0;
begin
    for i in 2..n loop
        for j in 2..i-1 loop
            if(mod(i,j)=0) then
                c:=c+1;
            end if;
        end loop;
        if(c=0) then 
            dbms_output.put_line(i);
        end if;
        c:=0;
    end loop;
end;
/
declare
 n number(5):=&n;
 sum number(10);
 rem number(10);
 i number(10);
 j number(5);
 begin
 i:=1;
 for i in 1..n loop
    j:=i;
    sum:=0;
    while(j>0) loop
        rem:=mod(j,10);
        sum:=(sum*10)+rem;
        j:=trunc(j/10);
    end loop;
    if(i=sum) then
        dbms_output.put_line(i||'is palindrome');
    end if;
end loop;
end;
/

create or replace procedure circle_area(radius in real,area out real,peri out real)
is
begin
area:=3.14*radius*radius;
peri:=2*3.14*radius;
end;
/
declare
x real;
y real;
begin
circle_area(5,x,y);
dbms_output.put_line('area of circle is:'||x);
dbms_output.put_line('perimeter of circle is:'||y);
end;
/

create or replace function factorial(n number)
return number as 
i number(3);
fact number(3):=1;
begin
for i in 1..n loop
fact:=fact*i;
end loop;
return fact;
end;
/
declare
n number(5);
begin
n:=5;
dbms_output.put_line('the factorial is '||factorial(n));                                                                                                                                                                                                                                                                                                                
end;
/

 
    