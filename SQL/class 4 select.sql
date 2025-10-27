select nvl(null,'empty') from dual;
select nvl('oracle','empty') from dual
select nvl2(null,'empty','no empty') from dual;
select nvl2('oracle','empty','no empty') from dual;

select nullif(100,100) from dual;
select nullif(100,200) from dual;
select nullif('arun','rrrr') from dual;
select nullif('arun','arun') from dual;


select coalesce(null,null,100,200) from dual;

select first_name ,salary, 
case when salary>15000 then 'high salary' when salary between 8000 and 14999 then 'medium salary'
else 'low salary' end as "salary ranage"  from hr.employees;

desc hr.employees;

select DEPARTMENT_ID from hr.employees;
select first_name,DEPARTMENT_ID,case when DEPARTMENT_ID between 90 and 100  then 'hr depatment' when DEPARTMENT_ID=60 then 'it department' else 'others' end as department_category from hr.employees