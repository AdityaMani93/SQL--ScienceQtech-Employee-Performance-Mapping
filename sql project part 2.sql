/* Create an index to improve the cost and performance of the query to find 
the employee whose FIRST_NAME is ‘Eric’ in the employee table after checking the execution plan. */

create index idx on emp_record_table(exp);
select * from emp_record_table where FIRST_NAME = 'Eric';

/* Write a query to calculate the bonus for all the employees,
based on their ratings and salaries (Use the formula: 5% of salary * employee rating). */

select emp_id, first_name, last_name, role, exp, salary, emp_rating, 0.05* salary* emp_rating
as bonus from emp_record_table order by bonus;

/* Write a query to calculate the average salary distribution based on the continent and country. 
Take data from the employee record table. */ 

select round(avg(salary)) as avg_sal, country, continent from emp_record_table group by country, CONTINENT;