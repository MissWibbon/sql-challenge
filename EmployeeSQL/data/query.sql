
-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT * FROM employees;
SELECT * FROM salaries;

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, 
salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no

-- List employees who were hired in 1986.
SELECT * FROM employees WHERE hire_date >= '12/31/1985' AND hire_date <= '01/01/1987'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM dept_manager;

SELECT dept_manager.dept_no, department.dept_name,
dept_manager.from_date, dept_manager.to_date,
employees.first_name, employees.last_name
FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN department
ON department.dept_no = dept_manager.dept_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM dept_emp;

SELECT employees.emp_no, employees.first_name, employees.last_name,
department.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN department
ON department.dept_name = dept_emp.dept_name


-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees WHERE first_name = 'Hercules' AND LEFT(last_name, 1) = 'B';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM dept_emp;

SELECT employees.emp_no, employees.last_name, employees.first_name, 
department.dept_name

FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN department
ON dept_emp.dept_name = department.dept_no

WHERE department.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM dept_emp;

SELECT employees.emp_no, employees.last_name, employees.first_name, 
department.dept_name

FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN department
ON dept_emp.dept_name = department.dept_no

WHERE department.dept_name = 'Sales' OR  department.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
  last_name,
  COUNT(*)
FROM
  employees
GROUP BY
  last_name
 ORDER BY count DESC