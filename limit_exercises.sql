USE employees;

-- List the first 10 distinct last names sorted in descending order.
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

-- First 5 employees born on Christmas, and hired in the 90's
SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

-- Tenth page of employees born on Christmas and hired in the 90's
SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;