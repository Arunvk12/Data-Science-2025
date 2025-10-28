select * from (select first_name,department_id,salary,row_number() over(PARTITION by department_id order by salary desc) as rn from hr.EMPLOYEES)where rn=5;

with def as (select first_name,department_id,salary,row_number() over(PARTITION by department_id order by salary  )as rn from hr.EMPLOYEES)

select * from def where rn<=2;

describe sh.customers
select * from(
select CUST_CITY,cust_first_name,CUST_CREDIT_LIMIT,row_number() over(partition by CUST_CITY order by CUST_CREDIT_LIMIT desc ) as rn from sh.customers) where rn<=2;

with city as(select CUST_CITY,CUST_CREDIT_LIMIT,row_number() over(partition by CUST_CITY order by CUST_CREDIT_LIMIT desc ) as rn from sh.customers)

select * from city where rn<=2;


select cust_city,CUST_CREDIT_LIMIT,lag(CUST_CREDIT_LIMIT) over(order by CUST_CREDIT_LIMIT desc) as lagg,lead(CUST_CREDIT_LIMIT) over(order by CUST_CREDIT_LIMIT desc) as leadd from sh.customers

with ranked as(select cust_id,CUST_CREDIT_LIMIT,row_number()over(order by CUST_CREDIT_LIMIT desc)as rn from sh.customers)

select cust_id,CUST_CREDIT_LIMIT, case when rn<=5 then 'premium' else 'standard' end as tired from ranked order by CUST_CREDIT_LIMIT desc;

select cust_id,CUST_CREDIT_LIMIT from sh.customers order by CUST_CREDIT_LIMIT desc;