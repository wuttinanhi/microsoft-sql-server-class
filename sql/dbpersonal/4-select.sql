SELECT projno FROM projwork

SELECT DISTINCT projno FROM projwork

SELECT DISTINCT projno, empnum FROM projwork

SELECT * FROM projwork ORDER BY hours

SELECT * FROM projwork
    ORDER BY hours desc

SELECT employee.empnum, employee.empname FROM employee
    ORDER BY employee.empname

SELECT top 5 employee.empnum, employee.empname
    FROM employee
    ORDER BY employee.empname

SELECT top 5 e.empnum, e.empname
    FROM employee as e
    ORDER BY e.empname

SELECT top 5 e.empnum as "employee number", e.empname as "employee name"
    FROM employee as e
    ORDER BY e.empname
