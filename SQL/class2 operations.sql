SELECT * from dual;
select upper('arun') as NAME from dual;
select first_name,upper(last_name) from hr.EMPLOYEES;

select initcap('my name is arun') from dual;

select initcap('my name is arun')as title, length('my name is arun')as len from dual;

select substr('data science',6,4) from dual;
select instr('datascience','s') from dual;

select lpad('456','6','0') from dual;
select rpad('456','6','0') from dual;


select trim('     data     ') from dual;

select replace('data','data','bata') FROM dual;

select concat('oracal','sql') from dual;

select ascii('a') from dual;

select chr(97) from dual;

select reverse('ARUN') FRom dual;


desc hr.employees;
select email,length(email) from hr.employees;
select email,substr(email,1,3) from hr.employees;

select email,substr(email,length(email)-2,3) from hr.employees;

select PHONE_NUMBER,rtrim(PHONE_NUMBER,'0') from hr.employees;]

select substr(first_name,1,3) || substr(last_name,1,3) from hr.employees;

select phone_number,rpad('X',length(phone_number)-4,'X')|| substr(phone_number,-4) as masked from hr.employees;


number_based -funciton

select ceil(12.8) , floor(12.8) , abs(-12) from dual;

select power(2,5) from dual;

select mod(27,4) from dual;

select sqrt(81) from dual;

select sign(90),sign(0),sign(-11) from dual;

select log(2,16) from dual;

select greatest(10,44,23,55) from dual;

select least(10,44,23,55) from dual;

select sin(0),cos(0),tan(0),acos(0),asin(0),atan(0) from dual;
select round(12.43) from dual
select round(12.46,1) from dual;