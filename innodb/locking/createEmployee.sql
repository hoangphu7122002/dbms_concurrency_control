USE dbms_assignment;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no VARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    hire_date VARCHAR(50) NOT NULL
);

INSERT INTO employees VALUES('1','Hoang Phu','7-12-2002');
INSERT INTO employees VALUES('2','Hellas','23-10-2002');
INSERT INTO employees VALUES('3','Gia Phong','8-3-2002');
INSERT INTO employees VALUES('4','Duc Huy','7-9-2002');