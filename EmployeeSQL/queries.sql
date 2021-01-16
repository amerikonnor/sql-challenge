--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
LIMIT 10;


--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
From employees
where hire_date::text like '1986%'
limit 10;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

Select departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
From departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no
limit 10;


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
Select employees.emp_no, last_name, first_name, dept_name
From employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
limit 10;

--List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex
From employees
where first_name = 'Hercules'
	and last_name like 'B%';


--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
Select employees.emp_no, last_name, first_name, dept_name
From employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'
limit 10;


--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
Select employees.emp_no, last_name, first_name, dept_name
From employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'
	or dept_name = 'Development'
limit 10;

--In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

Select last_name, count(last_name) as "# of Employees"
From employees
group by last_name
order by "# of Employees" DESC;

