-- Drop tables
-- Use cascade to drop tables that other tables need for dependencies

DROP TABLE departments CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE empDept;
DROP TABLE manDept;
DROP TABLE salaries;
DROP TABLE titles;

-- Make the departments table
-- This and employees table set the id column as a primary key

CREATE TABLE departments (
	id varchar(10) primary key,
	name varchar(30)
);

-- Make the employees table

CREATE TABLE employees (
	id int PRIMARY KEY,
	birth_date DATE not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	gender varchar(1),
	hire_date DATE not null
);

-- Create the employee-department table

CREATE TABLE empDept (
	emp_id int not null,
	dept_id varchar(10) not null,
	from_date DATE not null,
	to_date DATE not null,
	foreign key (dept_id) references departments(id),
	foreign key (emp_id) references employees(id)
);

-- Create the manager-department table

CREATE TABLE manDept(
	dept_id varchar(10) not null,
	emp_id int not null,
	from_date DATE not null,
	to_date DATE not null,
	foreign key (dept_id) references departments(id),
	foreign key (emp_id) references employees(id)
);

-- Create the salaries table

CREATE TABLE salaries (
	emp_id int not null,
	salary int not null,
	from_date DATE,
	to_date DATE,
	foreign key (emp_id) references Employees(id)
);

-- Create the titles table

CREATE TABLE titles (
	emp_id int not null,
	title varchar(30) not null,
	from_date DATE not null,
	to_date DATE not null,
	foreign key (emp_id) references Employees(id)
);

select * from titles;