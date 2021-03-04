USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS 'Title', COUNT(*) AS 'Head Count'
FROM employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on d.dept_no = de.dept_no
         JOIN titles t on e.emp_no = t.emp_no
WHERE de.to_date > NOW() AND t.to_date > NOW() AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as 'Salary'
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on dm.emp_no = e.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;