-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT Employees.emp_id, Employees.last_name, Employees.first_name, Employees.sex, Salaries.Salary
FROM Employees
JOIN Salaries ON
Salaries.emp_id = Employees.emp_id;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT Employees.first_name, Employees.last_name, Employees.hire_date
FROM Employees
WHERE hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT Departments.dept_id, Departments.dept_name, Employees.emp_id, Employees.last_name, Employees.first_name
FROM dept_manager
JOIN Departments ON 
Departments.dept_id = dept_manager.dept_id
JOIN Employees ON
Employees.emp_id = dept_manager.emp_id;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT Departments.dept_id, Employees.emp_id, Employees.last_name, Employees.first_name, Departments.dept_name
FROM dept_emp
JOIN Departments ON 
Departments.dept_id = dept_emp.dept_id
JOIN Employees ON
Employees.emp_id = dept_emp.emp_id;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT Employees.first_name, Employees.last_name, Employees.sex
FROM Employees
WHERE first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT Departments.dept_name, Employees.emp_id, Employees.last_name, Employees.first_name
FROM dept_emp
JOIN Departments ON 
Departments.dept_id = dept_emp.dept_id
JOIN Employees ON
Employees.emp_id = dept_emp.emp_id
WHERE Departments.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT Employees.emp_id, Employees.last_name, Employees.first_name, Departments.dept_name
FROM dept_emp
JOIN Departments ON 
Departments.dept_id = dept_emp.dept_id
JOIN Employees ON
Employees.emp_id = dept_emp.emp_id
WHERE Departments.dept_name = 'Sales' or Departments.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT Employees.last_name, count(last_name) AS "how many employees share each last name?"
FROM Employees
GROUP BY last_name
ORDER BY "how many employees share each last name?" DESC;