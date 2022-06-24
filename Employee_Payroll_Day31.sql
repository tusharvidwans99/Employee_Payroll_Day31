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


/*UC3 - Adding data into the table*/

insert into employee_payroll(Name,Salary,StartDate) values('Suresh', 1000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Tushar', 2000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Amit', 3000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Chaitra',4000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Ajay', 5000, GETDATE())

/*UC4 - Retrieving the data which was inserted into the employee_peyroll table*/ 
select * from employee_payroll

/*UC5 - Retrieving the salary data for speicific person and for all employees which com in speicif date*/
select Salary from employee_payroll
where Name='Amit'

select salary from employee_payroll
where StartDate between cast('2022-06-20' as date) and cast('2022-06-24' as date)