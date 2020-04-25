
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