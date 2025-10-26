desc hr.EMPLOYEES
select hire_date,round(hire_date,'year') as ronded from hr.EMPLOYEES;
select hire_date,round(hire_date,'month') as ronded from hr.EMPLOYEES;

select extract(year from hire_date),extract(month from hire_date),extract(day from hire_date) from hr.EMPLOYEES;
select new_time(sysdate,'gmt','pst') from dual;
select systimestamp from dual;

select extract(hour from localtimestamp) ,extract(minute from localtimestamp),extract(second from localtimestamp) from dual;

select localtimestamp,localtimestamp+interval '10' hour from dual;