set serveroutput on;
declare
 a integer;
 b integer;
 c integer;
begin
 a:=10;
 b:=20;
 c:=a+b;
 dbms_output.put_line(c);
 end;
 /
 declare
 a number(10):=&a;
 b number(10):=&b;
 c number(10);
 begin
 c:=a+b;
 dbms_output.put_line(c);
 end;
 /
 declare
 mes varchar(20):='hello world';
 begin
 dbms_output.put_line(mes);
 end;
 /
 declare
 a number(10):=&a;
 b number(10):=&b;  
 c number(10);
 d number(10);
 e number(10);
 f number(10);
 
 begin
 c:=a+b;
 d:=b-a;
 e:=a*b;
 f:=a/b;
 dbms_output.put_line(c||' '||d||' '||e||' '||f);
 end;
 /
 declare 
 a number(10):=&a;
 b number(10):=&b;
 c number(10);
 begin
 dbms_output.put_line('a:'||a||'and b:'||b||' before swapping:');
 c:=a;
 a:=b;
 b:=c;
 dbms_output.put_line('a:'||a||'and b:'||b||' after swapping:');
 end;
 /
 declare 
 a number(10):=&a;
 b number(10):=&b;
 c number(10);
 begin
 dbms_output.put_line('a:'||a||'and b:'||b||' before swapping:');
a:=a+b;
b:=a-b;
a:=a-b;
 dbms_output.put_line('a:'||a||'and b:'||b||' after swapping:');
 end;
 /
 declare
 a number(10):=&a;
 begin
 if( mod(a,2) = 0) then
    dbms_output.put_line('The Given'||a||' Number is Even!');
else
     dbms_output.put_line('The Given'||a||' Number is Not A Even Number!');
end if;
end;
/
declare
a number(10):=&a;
b number(10):=&b;
c number(10):=&c;
begin
if a>b and a>c then
    dbms_output.put_line('a:'||a||'Is The Biggest');
elsif b>c then
    dbms_output.put_line('b:'||b||'Is The Biggest');
else
    dbms_output.put_line('c:'||c||'Is The Biggest');
end if;
end;
/