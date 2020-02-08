-- 1) List emp number, first name, last name, gender, & salary

select e.id, e.first_name, e.last_name, e.gender, s.salary
from employees e
	join salaries s
	on e.id = s.emp_id

-- 2) List employees hired in 1986

select e.id, e.first_name, e.last_name, e.hire_date
from employees e
	where extract(year from hire_date) = 1986

-- 3) List the manager of every department, as well as associated data

select md.emp_id, e.first_name, e.last_name, d.name, md.dept_id, 
		md.from_date, md.to_date
from mandept md
	join departments d
	on d.id = md.dept_id
		join employees e
		on e.id = md.emp_id

-- 4) List the department of each employee, as well as associated data

select e.id, e.first_name, e.last_name, d.name
from empdept ed
	join departments d
	on d.id = ed.dept_id
		join employees e
		on e.id = ed.emp_id
		ORDER BY e.id
		
-- 5) List all employees with first name Hercules and last name starting w/ B

select first_name, last_name, "id"
	from employees
	where first_name = 'Hercules' and last_name like 'B%'
	
-- 6) List all sales dept employees, along with associated data

select e.id, e.last_name, e.first_name, d.name
from employees e
	join empdept ed
	on e.id = ed.emp_id
		join departments d
		on ed.dept_id = d.id
		where d.name = 'Sales'
		order by e.id;