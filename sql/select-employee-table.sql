/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
	EmpNo,
	EmpName
FROM dbEmployee.dbo.EMPLOYEE
