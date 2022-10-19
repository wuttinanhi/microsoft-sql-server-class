
CREATE TABLE employee
(
    empnum CHAR(4),
    empname VARCHAR(15),
    hiredate DATETIME,
    salary INT,
    position VARCHAR(15),
    depno CHAR(2),
    mgrno CHAR(4),
    CONSTRAINT emloyee_pk PRIMARY KEY (empnum)
)

CREATE TABLE dep
(
    depno CHAR(2),
    depname VARCHAR(15),
    location VARCHAR(15),
    CONSTRAINT depno_pk PRIMARY KEY (depno)
)

CREATE TABLE project
(
    projno CHAR(2),
    projdesc VARCHAR(20),
    startdate DATETIME,
    enddate DATETIME,
    budget INT,
    CONSTRAINT projno_pk PRIMARY KEY (projno)
)

CREATE TABLE projwork
(
    projno CHAR(2),
    empnum CHAR(4),
    hours SMALLINT
)

ALTER TABLE employee
    ADD CONSTRAINT depno_fk FOREIGN KEY (depno)
    REFERENCES dep(depno)

ALTER TABLE projwork
    ADD CONSTRAINT projno_fk FOREIGN KEY (projno)
    REFERENCES project(projno)
ALTER TABLE projwork
    ADD CONSTRAINT empnum_fk FOREIGN KEY (empnum)
    REFERENCES employee(empnum)
