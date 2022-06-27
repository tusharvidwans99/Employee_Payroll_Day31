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
where StartDate between cast('2022-06-20' as date) and GETDATE()

/*UC6 - Adding Gender column in employee_table to show the gender of employee*/
alter table employee_payroll
Add Gender char

update employee_payroll
set Gender='M'
where Id in (1,2,3,5)

update employee_payroll
set Gender='F'
where Id=4

select * from employee_payroll


/*UC7 - Calculating sum, avg, min, max of salary and count of Female and Male*/
/*SUM, AVG, MIN, MAX, COUNT*/
select sum(Salary),Gender from employee_payroll
GROUP BY Gender


select avg(Salary),Gender from employee_payroll
GROUP BY Gender

select min(Salary),Gender from employee_payroll
GROUP BY Gender

select max(Salary),Gender from employee_payroll
GROUP BY Gender

select count(Salary),Gender from employee_payroll
GROUP BY Gender

/*UC8 - extending payroll_service table by adding columns like phone_number, address, department*/

select * from employee_payroll

alter table employee_payroll add phone_number varchar(250)
alter table employee_payroll add address varchar(250)
alter table employee_payroll add department varchar(150) not null default '0'
insert into employee_payroll (name, salary, StartDate) values('Bill',100000.0,'2018-01-03')


/* UC9 - extending payroll_service table by adding columns like deduction, taxable_pay, tax, net_pay*/

exec sp_rename 'employee_payroll.Salary' , 'basic_pay'  /*change name of the column*/
alter table employee_payroll add deductions float
alter table employee_payroll add taxable_pay float
alter table employee_payroll add tax float
alter table employee_payroll add net_pay float

update employee_payroll
set department='Sales'
where Name='Bill'

select * from employee_payroll


insert into employee_payroll(Name,department,Gender,basic_pay,deductions,taxable_pay,tax,net_pay,StartDate)
values('Terisa', 'IT','F',3000000.00,100000.00,2000000.00,500000.00,1500000.00,GETDATE())