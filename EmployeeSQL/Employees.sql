
CREATE TABLE Departments (
    dept_id varchar(255)   NOT NULL,
    dept_name varchar(255)   NOT NULL,
    PRIMARY KEY (dept_id)
);

CREATE TABLE Titles (
    title_id varchar(255)   NOT NULL,
    title varchar(255)   NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
    emp_id int   NOT NULL,
    title_id varchar(255)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(255)   NOT NULL,
    last_name varchar(255)   NOT NULL,
    sex varchar(255)   NOT NULL,
    hire_date date   NOT NULL,
    PRIMARY KEY (emp_id),
	FOREIGN KEY (title_id) REFERENCES Titles(title_id)
);

CREATE TABLE dept_emp (
    emp_id int   NOT NULL,
    dept_id varchar(255)   NOT NULL,
	PRIMARY KEY (emp_id,dept_id),
	FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
	FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE dept_manager (
	dept_id varchar(255)   NOT NULL,
    emp_id int   NOT NULL,
	PRIMARY KEY (dept_id,emp_id),
	FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
	FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Salaries (
    emp_id int   NOT NULL,
    Salary int   NOT NULL,
	PRIMARY KEY (emp_id,Salary),
	FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);