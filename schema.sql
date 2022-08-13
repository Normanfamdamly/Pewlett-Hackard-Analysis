--Creating tables for PH-EmployeeDB
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL, 
	dept_name VARCHAR(40) NOT NULL, 
	PRIMARY KEY (dept_no), 
	UNIQUE (dept_name)
);

CREATE TABLE employees (
	emp_no int NOT NULL, 
	birth_date date NOT NULL, 
	first_name varchar Not Null,
	last_name varchar Not Null,
	gender varchar Not Null,
	hire_date date Not Null,
	PRIMARY KEY (emp_no), 
	unique (emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);	

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
	emp_no INT NOT Null,
	title VARCHAR Not Null,
	from_date date Not Null,
	to_date date Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);

CREATE TABLE managers (
	dept_no VARCHAR (4) NOT NUll,
	emp_no INT NOT Null,
	from_date date NOT Null, 
	to_date date NOT Null,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no, emp_no)
);	

CREATE TABLE dept_emp( 
	dept_no VARCHAR(4) NOT Null, 
	emp_no INT NOT NUll,
	from_date date NOT Null,
	to_date date NOt Null, 
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no, emp_no)
);	

SELECT * FROM departments;