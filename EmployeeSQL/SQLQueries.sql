SELECT emp_no, first_name, last_name, sex, hire_date
FROM employees
;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'
;

SELECT deptman.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM dept_manager AS deptman
INNER JOIN employees AS emp
ON deptman.emp_no=emp.emp_no
INNER JOIN departments AS dept
ON dept.dept_no=deptman.dept_no
;

SELECT emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS dept_emp
ON emp.emp_no=dept_emp.emp_no
INNER JOIN departments AS dept
ON dept_emp.dept_no=dept.dept_no
;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'
;

SELECT emp.emp_no, emp.last_name, emp.first_name
FROM dept_emp
INNER JOIN departments AS dept
ON dept_emp.dept_no=dept.dept_no
INNER JOIN employees AS emp
ON dept_emp.emp_no=emp.emp_no
WHERE dept.dept_name = 'Sales'
;

SELECT emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM dept_emp
INNER JOIN departments AS dept
ON dept_emp.dept_no=dept.dept_no
INNER JOIN employees AS emp
ON dept_emp.emp_no=emp.emp_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development'
;

SELECT emp.last_name, COUNT(DISTINCT(emp.last_name)) AS unique_count
FROM employees AS emp
GROUP BY emp.last_name
ORDER BY unique_count DESC
;
