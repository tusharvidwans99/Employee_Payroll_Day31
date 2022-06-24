/*Welcome to the Employee payroll SQL program*/

/*UC1 - Creating payroll service database*/

create database payroll_service

/*UC2 - Creating employee_payroll table and adding fields*/

create table employee_payroll
(
Id int PRIMARY KEY identity,
Name varchar(30),
Salary int,
StartDate date
)

drop table employee_payroll