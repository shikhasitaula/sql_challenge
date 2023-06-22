-- Data analysis 
--List the employee number, last name, first name, sex, and salary of each employee.
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.sex, salaries.salary 
FROM employee 
JOIN salaries ON
salaries.emp_no = employee.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employee.first_name, employee.last_name, employee.hire_date
FROM employee 
WHERE EXTRACT(YEAR FROM hire_date) = '1986';


--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT department_manager.dept_no, departments.dept_name, employee.emp_no, employee.last_name, employee.first_name
FROM departments 
JOIN department_manager ON 
departments.dept_no = department_manager.dept_no
JOIN employee ON
employee.emp_no = department_manager.employee_no


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT departments.dept_no, employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM departments 
JOIN department_manager ON 
departments.dept_no = department_manager.dept_no
JOIN employee ON
employee.emp_no = department_manager.employee_no


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employee.first_name, employee.last_name, employee.sex 
FROM employee 
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'


--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employee.emp_no, employee.last_name, employee.first_name
FROM employee
WHERE employee.emp_no IN
(
    SELECT department_emp.emp_no
    FROM department_emp
    WHERE department_emp.dept_no IN
    (
        SELECT departments.dept_no
        FROM departments
        WHERE departments.dept_name = 'Sales'
    )
);
--optional(optional query for the logic from 34 to 47):
SELECT employee.emp_no, employee.last_name, employee.first_name 
FROM employee 
JOIN department_emp 
ON department_emp. emp_no = employee.emp_no
JOIN departments 
ON departments.dept_no = department_emp.dept_no
WHERE dept_name = 'Sales'


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT employee.emp_no, employee.last_name, employee.first_name, dept_name
FROM employee 
JOIN department_emp 
ON department_emp. emp_no = employee.emp_no
JOIN departments 
ON departments.dept_no = department_emp.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
SELECT employee.last_name, count(last_name) AS Frequency_count
FROM employee 
GROUP BY last_name
