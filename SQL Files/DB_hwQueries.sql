--Data Analysis
--Query 1:
SELECT * FROM employees
SELECT * FROM salaries

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT JOIN salaries ON (employees.emp_no = salaries.emp_no);

--Query 2:
SELECT * FROM employees
WHERE
      hire_date >= '1/1/1986'
  AND hire_date <  '12/31/1986'
  
--Query 3:
SELECT * FROM employees
SELECT * FROM dept_manager
SELECT * FROM departments

SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name, 
		dept_manager.from_date, dept_manager.to_date 
FROM dept_manager
LEFT JOIN departments ON (dept_manager.dept_no = departments.dept_no)
LEFT JOIN employees ON (dept_manager.emp_no = employees.emp_no);

--Query 4:
SELECT * FROM employees
SELECT * FROM dept_emp
SELECT * FROM departments

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
LEFT JOIN departments ON (dept_emp.dept_no = departments.dept_no);

--Query 5:
SELECT * FROM employees
WHERE (first_name = 'Hercules' AND last_name LIKE 'B%');

--Query 6:
SELECT * FROM employees
SELECT * FROM dept_emp
SELECT * FROM departments

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
LEFT JOIN departments ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales';

--Query 7:
SELECT * FROM employees
SELECT * FROM dept_emp
SELECT * FROM departments

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
LEFT JOIN departments ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--Query 8:

SELECT DISTINCT last_name, count(*)
FROM employees 
GROUP by last_name
ORDER BY last_name DESC

--Fix Value (typo) dAstous, correct to Dastous and re-query, sorted in DESC order:
UPDATE employees
SET last_name = 'Dastous'
WHERE last_name LIKE 'dAs%' ;

SELECT DISTINCT last_name, count(*)
FROM employees 
GROUP by last_name
ORDER BY last_name DESC

