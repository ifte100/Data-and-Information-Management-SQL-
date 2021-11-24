SELECT dname, age
FROM Dependent
ORDER BY sex;

SELECT dname, age, sex
FROM Dependent
ORDER BY sex;

INSERT INTO Employee (names, address)
VALUES ('Joe Smith', '123 4th St.');

INSERT INTO Employee (salary, names, employee_number, address)
VALUES (2500, 'Joe Smith', 101, '123 4th St.');

SELECT * FROM Employee;

INSERT INTO Employee
VALUES ('Ben Howard', null, 102, null);

insert into employee
values('Joe Smith', '123 4th St.', 101, 2500.00);

insert into employee
values('David Jones', '27 Shillingford Rd', 103, 3300.00);

insert into employee
values('Sumit White', '95 Oxford Rd', 105, 1200.00);

insert into employee
values('Joya Das', '23 Springfield Cr', 114, 2290.00);

insert into employee
values('Terry Livingstone', '465 Easter Ave', 95, 3309.00);

insert into names(fullname)
select names
from employee;

delete from names;
insert into names(fullname)
select names
from employee
where salary > 2600;

create table Emp1 (addr VARCHAR2(20),
sal int,
empno int);

create table test2a
(name VARCHAR2(20),
ssn char(9) CONSTRAINT ssn_pk PRIMARY KEY,
dept_number INT,
acct_balance INT);

create table test2b
(name VARCHAR2(20),
ssn char(9),
dept_number INT,
acct_balance INT,
CONSTRAINT ssn_pk1 PRIMARY KEY(ssn));

create table test2c
(name VARCHAR2(20),
ssn char(9),
dept_number INT,
acct_balance INT);
describe test2c;

alter table test2c
ADD CONSTRAINT ssn_pk2 PRIMARY KEY(ssn);

SELECT stno, sname, relationship, age
FROM Student s JOIN Dependent d
ON s.stno = d.pno;

SELECT * FROM Course c
JOIN Prereq p
ON c.course_number = p.course_number;

SELECT count(*)
FROM Course c
JOIN Prereq p
ON c.course_number = p.course_number;

select x.sname as Senior, y.sname as Junior
from Student x, Student y
where y.class = 3
and x.class > y.class;
