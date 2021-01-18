CREATE TABLE Departments(
    dept_no VARCHAR(255),
    dept_name VARCHAR(255),
    PRIMARY KEY (dept_no)
);

CREATE TABLE Titles(
    title_id VARCHAR(255),
    title VARCHAR(255),
    PRIMARY KEY (title_id)
);

CREATE TABLE Employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(255),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(255),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries(
    id SERIAL,
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_Emp(
    id SERIAL,
    emp_no INT NOT NULL,
    dept_no VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_Manager(
    id SERIAL,
    dept_no VARCHAR(255),
    emp_no INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);
