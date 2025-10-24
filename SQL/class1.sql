select * from hr.EMPLOYEES;
select Employee_Id from hr.EMPLOYEES;
select first_name,last_name from hr.EMPLOYEES;
select first_name,last_name, first_name||last_name as "full name" from hr.EMPLOYEES;
select first_name,last_name from hr.EMPLOYEES where last_NaMe='Abel';
desc hr.EMPLOYEES;
select employee_id from hr.EMPLOYEES where salary>10000;
select * from hr.EMPLOYEES where DEPARTMENT_ID =80;     
select DEPARTMENT_ID from hr.EMPLOYEES      
select * from hr.employees where COMMISSION_PCT is null;          
select * from hr.employees where first_name like 'J%';
select DEPARTMENT_ID as dt,avg(salary) from hr.employees group by dt;
select DEPARTMENT_ID,count(*) from hr.employees group by DEPARTMENT_ID;
select DEPARTMENT_ID, max(salary) "max salary" from hr.employees group by DEPARTMENT_ID;

select DEPARTMENT_ID,sum(salary) "total Salary" from hr.employees group by DEPARTMENT_ID having sum(salary) >100000;
select DEPARTMENT_ID,count(*) from hr.employees group by DEPARTMENT_ID having count(*)>5;
select DEPARTMENT_ID,count(*) from hr.employees group by DEPARTMENT_ID having count(*)=1;