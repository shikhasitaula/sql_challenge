-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE IF EXISTS departments ;
DROP TABLE IF EXISTS job_title;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS department_emp ;

--create a table named departments 
CREATE TABLE departments(
    dept_no character varying PRIMARY KEY NOT NULL,
    dept_name varchar   NOT NULL
);

--create a table named job_title.
CREATE TABLE job_title (
    title_id  character varying PRIMARY KEY NOT NULL,
    title varchar   NOT NULL
);
 
--create a table named employee.
CREATE TABLE employee (
    emp_no character varying PRIMARY KEY NOT NULL,
    emp_title_id character varying  NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    FOREIGN KEY (emp_title_id)REFERENCES job_title(title_id)
);
--create a table named department_manager
CREATE TABLE department_manager (
    dept_no character varying   NOT NULL,
	employee_no character varying  NOT NULL,
	FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
	FOREIGN KEY (employee_no)REFERENCES employee(emp_no)
);

--cerate a table named department_emp.
CREATE TABLE department_emp (
    emp_no character varying  NOT NULL,
	dept_no character varying   NOT NULL,
	FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no)REFERENCES employee(emp_no)
);


