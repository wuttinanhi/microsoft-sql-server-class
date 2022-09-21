-- select projno from projwork
-- select distinct projno form projwork
-- select distinct projno, empnum form projwork

-- select* from projwork order by hours

-- select* from projwork
--     order by hours desc

-- select employee.empnum, employee.empname from employee
--     order by employee.empname

-- select top 5 employee.empnum, employee.empname
--     from employee
--     order by employee.empname

select top 5 e.empnum, e.empname
    from employee as e
    order by e.empname

select top 5 e.empnum as "employee number", e.empname as "employee name"
    from employee as e
    order by e.empname
