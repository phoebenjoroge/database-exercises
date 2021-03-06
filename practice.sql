USE employees;

select * from employees;

select * from salaries;

/*Inner join */

select e.emp_no as 'employee number', e.first_name, e.birth_date, s.salary, s.to_date
from employees e
inner join salaries s;

/*Left join */

select e.emp_no as 'employee number', e.first_name, e.birth_date, s.salary, s.to_date
from employees e
left join salaries s
on e.emp_no = s.emp_no;

/*Right join */
select e.emp_no as 'employee number', e.first_name, e.birth_date, s.salary, s.to_date
from employees e
right join salaries s
on e.emp_no = s.emp_no;


SELECT t.title AS 'Title', COUNT(*) AS 'Head Count'
FROM employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on d.dept_no = de.dept_no
         JOIN titles t on e.emp_no = t.emp_no
WHERE de.to_date > NOW() AND t.to_date > NOW() AND d.dept_name = 'Customer Service'
GROUP BY t.title;

desc employees;
insert  employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES(10, '1990-02-02', 'Hakuna', 'Matata', 'F', '2021-01-01');

select * from employees where first_name = 'hakuna';
desc salaries;

insert salaries(emp_no, salary, from_date, to_date) VALUES (10, 201872, '2021-01-01', '9999-01-01');