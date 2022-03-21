CREATE TABLE titles (
    emp_no INT NOT NULL,
	title VARCHAR(256) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
