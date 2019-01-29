create table course (
       course_id          integer      primary key,
       course_name        varchar(50)  not null,
       course_description varchar(100) not null
);


alter table course 
      add course_day varchar(50) not null;


select * from employees
where gender = 'F'; 


select * from employees
where hire_date > '1995-01-01';


select * from titles
where to_date = '1999-01-01'; 


select * from salaries
where salary >= 60000
and salary <= 90000;


select * from titles
where title = 'engineer'; 


Insert into course (course_id, course_name, course_description)
values (1, 'CED-1250', 'Big Data Storage');


delete from employees
where gender = 'M'
 and hire_date = '2009-01-01';


Update salaries
set salary = 100000 where emp_no = 499984;


Delete from titles
where to_date <> '9999-01-01';
