
create table employee
(
    empnum char (4),
    empname varchar (15),
    hiredate datetime,
    salary int,
    position varchar (15),
    depno char (2),
    mgrno char (4),
    constraint emloyee_pk primary key (empnum)
)

create table dep
(
    depno char (2),
    depname varchar (15),
    location varchar (15),
    constraint depno_pk primary key (depno)
)

create table project
(
    projno char (2),
    projdesc varchar (20),
    startdate datetime,
    enddate datetime,
    budget int,
    constraint projno_pk primary key (projno)
)

create table projwork
(
    projno char (2),
    empnum char (4),
    hours smallint
)

alter table employee
    add constraint depno_fk foreign key (depno)
    references dep(depno)

alter table projwork
    add constraint projno_fk foreign key (projno)
    references project(projno)
alter table projwork
    add constraint empnum_fk foreign key (empnum)
    references employee(empnum)
