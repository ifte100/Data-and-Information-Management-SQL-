create table Bread
  (code VARCHAR2(20),
  name VARCHAR2(20),
  price INT,
  candidateid INT,
  CONSTRAINT candidateid_pk PRIMARY KEY (candidateid));

  alter table Bread
  modify candidateid int not null;

alter table Bread
drop column candidateid;

alter table Bread
add productid INT;

alter table Bread
add constraint productid_pk PRIMARY KEY (productid);

alter table Bread
drop column code;

create table Supervisors
  (name VARCHAR2(20) constraint name_pk PRIMARY KEY,
  candidateid INT constraint candidateid_fk references Bread(productid),
  Salary INT);

insert into Bread
values('Abbotts Rye', 101, 20123);

update Bread
set price = 4
where productid = 20123;


insert into Bread
values('Abbotts Chickpea and Soy', 5, 20124); /*Mark*/

insert into Bread
values('Abbotts Olive&Ginger', 3, 20125);

insert into Bread
values('English Muffin', 2, 21120);

insert into Bread
values('London Crumpet', 3, 21121);

alter table Supervisors
add productcode INT;

insert into Supervisors
values('Mark', 20124, 15000);

insert into Supervisors
values('Josh', 20125, 13000);

insert into Supervisors
values('Maulie', 21120, 15000);

insert into Supervisors
values('Kyle', 20123, 15000);

insert into Supervisors
values('John', 21121, 12000);

create table casuals
  (name VARCHAR2(20),
  employee_no INT constraint employee_no_pk PRIMARY KEY,
  salary INT,
  supervisor VARCHAR2(20) constraint supervisor_fk references Supervisors(name)
  ON DELETE CASCADE);

  insert into casuals
  values('Seydus', 100, 2000, 'Mark');

  insert into casuals
  values('Connah', 101, 1500, 'Kyle');

  insert into casuals
  values('Hamza', 102, 1700, 'John');

  insert into casuals
  values('Michael', 103, 1900, 'Maulie');

  insert into casuals
  values('Puneet', 104, 2000, 'Josh');

  alter table casuals
  drop constraint supervisor_fk;

  alter table casuals
  add constraint supervisor_fk
  references Supervisors(name)
  ON DELETE CASCADE;

  drop table casuals;
