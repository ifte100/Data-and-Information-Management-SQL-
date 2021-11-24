select employeeName
from works
where salary > 15000;

CREATE TABLE staff
(staffname CHAR(15) NOT NULL,
street CHAR(15),
city CHAR(10),
PRIMARY KEY (staffName));

insert into staff
values ('David','Huntingdale','Whitehorse');

insert into staff
values ('Harry','Main','Kew');

insert into staff
values ('Mary','Cliffton','Monash');

alter table staff
ADD (manager char(10));

alter table staff
add (e_mail char(25));

INSERT INTO staff (staffName, street, city)
SELECT employeeName, street, city
FROM employee;

update works
set salary = salary * 1.1
where employeename = 'Jones';

update staff
set manager = 'Anthony'
where staffname = 'Lala';

update staff
set manager = 'Dodo'
where staffname = 'Harry';

update staff
set manager = 'Eren'
where staffname = 'Jones';

insert into employee
values('&name','&street','&city');

select employeename, &arithmetic_expression
from works;
