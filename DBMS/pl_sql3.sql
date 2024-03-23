set serveroutput on;
/*IMPLICIT CURSOR*/
create table customer(id number(10),name char(20),age number(3),address varchar(20),salary number(4));
insert into customer values(1,'PHANINDRA',19,'NSP',3000);
insert into customer values(2,'BHARAT',20,'HJ',5000);
insert into customer values(3,'JAYANTH',20,'BVRM',4000);
insert into customer values(4,'VINAY',19,'AMP',6000);
insert into customer values(5,'PAVAN',20,'BVRM',2000);
select * from customer;
/
declare
    total_rows number(10);
begin
    UPDATE customer set salary=salary+500;
    if sql%notfound then
        dbms_output.put_line('NO CUSTOMER SELECTED');
    elsif sql%found then 
        total_rows:=sql%rowcount;
        dbms_output.put_line(total_rows||'customers selcted');
    end if;
end;
/
/*EXPLICIT CURSOR*/
declare
    cid customer.id%type;
    cname customer.name%type;
    caddr customer.address%type;
    cursor c_customer is select id,name,address from customer;
begin
    open c_customer;
    loop
    fetch c_customer into cid,cname,caddr;
        exit when c_customer%notfound;
        dbms_output.put_line(cid||'   '||cname||'   '||caddr);
    end loop;
end;
/
/* triggers*/
select * from studdetails;
create table studdetails(s_no number(10),s_name char(10),s_class VARCHAR2(10),m1 number(3),m2 number(3),m3 number(3),m4 number(3),m5 number(3));
insert into studdetails values(1,'PHANINDRA','B.Tech',76,86,69,79,81);
insert into studdetails values(2,'BHARAT','B.Tech',50,61,69,59,85);
insert into studdetails values(3,'JAYANTH','B.Tech',48,66,59,70,71);
insert into studdetails values(4,'VINAY','B.Tech',58,76,69,79,91);
insert into studdetails values(5,'PAVAN','B.Tech',42,49,47,79,45);

create table abstract(std_no number(10),std_name char(20),std_class varchar2(30),tot number(5),grade varchar2(10),percentage number,date_enter date);

create or replace procedure evaluate_grade(v_sno number,v_name varchar2,v_class varchar2,v_m1 number,v_m2 number,v_m3 number,v_m4 number,v_m5 number)
is 
    v_total abstract.tot%type;
    v_grade abstract.grade%type;
    v_percent abstract.percent%type;
    v_data_enter abstract.date_enter.%type;
begin
    v_total:=v_m1+v_m2+v_m3+v_m4+v_m5;
    v_percent:=v_total/5;
    if(v_m1>40 and v_m2>40 and v_m3>40 and v_m4>40 and v_m5>40) then
        if(v_percent>59)then
            v_grade:='First';
        elsif
    
    
    
    
    
    
    
    
    
    
    
    
    
    7
    
    
    
    
    
    
    
    
    
/*EXCEPTION HANDLING*/
    
declare
    cid customer.id%type:=9;
    cname customer.name%type;
    caddr customer.address%type;
begin
    select name,address into cname,caddr from customer where id=cid;
    dbms_output.put_line('NAME:'||cname);
    dbms_output.put_line('ADDRESS:'||caddr);
exception
    when no_data_found then 
        dbms_output.put_line('No Such CUSTOMER EXSISTS!');
    when others then
        dbms_output.put_line('ERROR!');
end;

/* triggers*/
create or replace trigger display_salary_changes before delete or update or insert on customer
for each row
when(NEW.id>0)
declare
    sal_diff number(10);
begin
    sal_diff:=:NEW.salary-:OLD.salary;
    dbms_output.put_line('old salary:'||:OLD.salary);
    dbms_output.put_line('new salary:'||:NEW.salary);
    dbms_output.put_line('salary difference:'||sal_diff);
end;

update customer set salary=salary+500 where id=2;
