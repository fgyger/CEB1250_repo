SELECT salary, emp_no
FROM salaries
ORDER BY emp_no asc, salary desc;


select * from employees
where first_name like 'A%'
   or last_name  like 'A%'
order by first_name, last_name;


The WHERE clause can be applied without or before the GROUP BY function
The HAVING clause is applied with a GROUP BY function and refers to the results of the GROUP BY function


An entity is a thing that exists either physically or logically. Within a database it's usually a physical table, that consists of several attributes (fields).
One or several attributes define a unique key (the primary key) with which the rows of that entity can be distinguished. 
A relationship captures how entities are related to one another and how 2 tables are linked together.
There are several relationships : one to one, one to zero or one, one to zero or many, one to one or many, many to many (this one should be avoided). 


The Data Definition Language (DDL) is the subset of SQL which is responsible for give the database its form and creating objects, such as tables. 
    DDL statements can declare, rename, modify, or destroy objects in the local database.
Data Manipulation Language aka DML or CRUD (Create, Read, Update and Delete) is used to retrieve, insert, delete, or modify data values.
Data Control Language (DCL) is responsible of control the access and manage the permissions on a given field or a table, either to single users or a group.
Transaction control statements manage changes made by DML statements, such as commit or rollback statements that were done using DML.


The different types of the JOINs in SQL are:
(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Return all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Return all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Return all records when there is a match in either left or right table
SELF JOIN : It is not a different form of JOIN, rather it is a JOIN (INNER, OUTER, etc) of a table to itself.


NULL means it does not have any value not even garbage value. ZERO is an integer value (=0). BLANK is a empty String value ("") .


select first_name, last_name, title
from employees join titles
on employees.emp_no = titles.emp_no 
where titles.to_date = '9999-01-01' 
and employees.emp_no in (
    select salaries.emp_no
    from salaries 
    where salaries.to_date = '9999-01-01'
    and mod(salary,2) = 0)
order by last_name, first_name;


AT = ON, move the HAVING clause after the GROUP BY 
Correct synthax:
SELECT employees.emp_no, AVG(salaries.salary)
FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY employees.emp_no HAVING AVG(salaries.salary) > 10000;

