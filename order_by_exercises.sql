use employees;

select * from employees where first_name in ('Irena', 'Vidya','Maya') ORDER BY first_name;
select * from employees where first_name in ('Irena', 'Vidya','Maya') ORDER BY first_name, last_name;

select * from employees where first_name in ('Irena', 'Vidya','Maya') ORDER BY last_name, first_name;

select * from employees where first_name in ('Irena', 'Vidya','Maya') ORDER BY last_name DESC, first_name DESC;
select * from employees where last_name like'E%' ORDER BY emp_no DESC;

select * from employees where hire_date like'199%';

select * from employees where birth_date like'%12-25';

select * from employees where last_name like'%q%';

select * from employees where first_name = 'Irena' or first_name = 'Vidya' or first_name ='Maya';

select * from employees where gender = 'm' and (first_name = 'Irena' or
                                                first_name = 'Vidya' or
                                                first_name ='Maya' );

select * from employees where last_name like'%e';

select * from employees where last_name like'%e' or last_name like 'e%';

select * from employees where last_name like'%e' and last_name like 'e%';

select * from employees where hire_date like'199%' and birth_date like'%12-25' ORDER BY birth_date, hire_date DESC;

select * from employees where last_name like'%q%' and last_name not like '%qu%';