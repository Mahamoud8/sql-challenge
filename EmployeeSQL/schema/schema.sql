CREATE TABLE departments(
    dept_no varchar(10),
    dept_name varchar(40),
    primary key (dept_no));
	
CREATE TABLE titles(
    title_id varchar(10),
    title varchar(40),
    primary key (title_id));
	
----------------------------------------------	
CREATE TABLE employees(
    emp_no 				int primary key,
    emp_title_id 		varchar(10),
    birth_date 			date,
    first_name 			varchar(30),
    last_name 			varchar(30),
    sex 				varchar(1),
    hire_date 			date,
	foreign key (emp_title_id) references title(title_id));
	
----------------------------------------------	
CREATE TABLE dept_manager(
    dept_no 		varchar(20),
	emp_no 			int,
    primary key (dept_no, emp_no),
    foreign key (dept_no) references departments(dept_no),
    foreign key (emp_no) references employees(emp_no));
	
CREATE TABLE dept_emp(
    emp_no 			int,
    dept_no 		varchar(20),
    primary key (emp_no,dept_no),
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no));

CREATE TABLE salaries(
    emp_no 			int,
    salary 			int,
    primary key (emp_no),
    foreign key (emp_no) references employees(emp_no));