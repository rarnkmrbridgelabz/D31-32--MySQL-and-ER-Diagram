create database employee_payroll_service;
show databases;
use employee_payroll_service;

create table employee_payroll (id int NOT NULL auto_increment, name varchar(100) NOT NULL, salary int NOT NULL, start date, primary key (id));
desc employee_payroll;

insert into employee_payroll (name, salary, start) values ('Karthick',40000, '2022-04-12'), ('Dinesh',38500, '2022-04-07'), ('Arun',41000, '2022-04-06'), ('Gokul',58700, '2022-01-27');
select * from employee_payroll;

select salary from employee_payroll where name='Gokul';

select * from employee_payroll where start between cast('2022-04-06' as date) and date(now());

alter table employee_payroll add gender char(6);
select * from employee_payroll;

update employee_payroll set gender = 'M' WHERE name = 'Karthick' or name = 'Dinesh' or name = 'Arun' or name = 'Gokul';
select * from employee_payroll;

insert into employee_payroll (name, salary, start) values ('Preethi',41000, '2022-04-17'), ('Keerthi',47500, '2022-04-02');
update employee_payroll set gender = 'F' WHERE name = 'Preethi' or name = 'Keerthi';
select * from employee_payroll;

select sum(salary) from employee_payroll where gender = 'F' group by gender;
select sum(salary) from employee_payroll where gender = 'M' group by gender;
select max(salary) from employee_payroll where gender = 'F' group by gender;
select max(salary) from employee_payroll where gender = 'M' group by gender;
select min(salary) from employee_payroll where gender = 'F' group by gender;
select min(salary) from employee_payroll where gender = 'M' group by gender;
select avg(salary) from employee_payroll where gender = 'F' group by gender;
select avg(salary) from employee_payroll where gender = 'M' group by gender;
select gender, count(gender) from employee_payroll group by gender;

alter table employee_payroll add Phone_number varchar(20);
alter table employee_payroll add Address varchar(100) after name;
alter table employee_payroll add Department varchar(30) not null after address;
desc employee_payroll;

alter table employee_payroll rename column salary to Basic_pay;
alter table employee_payroll add deduction double not null after Basic_pay;
alter table employee_payroll add taxable_pay double not null after deduction;
alter table employee_payroll add tax double not null after taxable_pay;
alter table employee_payroll add net_pay double not null after tax;
select * from employee_payroll;

insert into employee_payroll (name, Department, gender, Basic_Pay, deduction, taxable_pay, tax, net_pay, start) values ('Terisa', 'Sales', 'F', 60000, 7000, 1500, 207000, 156500, '2022-03-08');
insert into employee_payroll (name, Department, gender, Basic_Pay, deduction, taxable_pay, tax, net_pay, start) values ('Terisa', 'Marketing', 'F', 60700, 8000, 4000, 607000, 35500, '2022-04-10');
select * from employee_payroll;