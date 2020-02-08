-- 1) List emp number, first name, last name, gender, & salary

select e.id, e.first_name, e.last_name, e.gender, s.salary
from employees e
	join salaries s
	on e.id = s.emp_id

-- 2) List employees hired in 1986

select e.id, e.first_name, e.last_name, e.hire_date
from employees e
	where extract(year from hire_date) = 1986


select * from employees