Create table Employee(
EmpId int primary key identity(1,1),
FirstName varchar(20),
LastName varchar(20),
Salary int,
City varchar(20),
DeptName varchar(20),
)

select * from Employee
insert into Employee values('Shital','Patil',20000,'Nashik','HR')
insert into Employee values('Raj','Rao',30000,'Pune','Sales')
insert into Employee values('Amol','Jadhav',25000,'Nashik','IT')
insert into Employee values('Shahu','Patil',40000,'Pune','Production')
insert into Employee values('Tushar','Pawar',20000,'Mumbai','HR')
insert into Employee values('Pooja','Patil',20000,'Nashik','HR')
insert into Employee values('Sumit','Rao',35000,'Pune','Sales')
insert into Employee values('Mira','Jadhav',25000,'Nashik','IT')
insert into Employee values('John','Patil',30000,'Pune','Production')
insert into Employee values('priya','Pawar',40000,'Mumbai','HR')

--1.Display All Employee from table
select * from Employee

--2.Display emp who work in sales deparment
select * from Employee where DeptName='Sales'

--3.Display emp who's salary is greater than 35000
select * from Employee where Salary>=35000

--4.Display emp who belong to pune and mumbai city
select * from Employee where City in('Pune','Mumbai')

--5.Display emp who's salary is in between 25000-30000
select * from Employee where Salary>=25000 and Salary<=30000

--6.Display emp who's name start with 'T' 
select * from Employee where FirstName like'T%'

--7.Display emp who's name end with 'A' 
select * from Employee where FirstName like'%A'

--8.Display unique department from emp table
select distinct DeptName from Employee

--9.Display emp those are not working in hr & Sales Dept
select *from Employee where  DeptName<>'HR'and DeptName<>'Sales'

--Aggregate function
--1.Count 2.sum 3.avg 4. max 5.min

--1.it will count total number of record in employee table
	select count(DeptName) from Employee
	select count (*) from Employee

--2.it will count total number of distinct record in employee table
	select count(distinct DeptName) from Employee

--3.it will count sum of salary
	select sum(Salary)as SumSalary from Employee

--4.it will show the Average salary of employee
	select avg(Salary)as AvgSalary from Employee

--5.it will show the maximum salary of employee
	select max(Salary)as MaxSalary from Employee

--6.it will show the minimum salary of employee
	select min(Salary)as MinSalary from Employee

--clouse group by

--it will display the Employee with DeptName count
select DeptName from Employee
select DeptName,count (EmpId) as DeptCount from Employee
group by DeptName

--it will display the Employee with City count
select City from Employee
select City,count (EmpId) as CityCount from Employee
group by City

--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
select FirstName "first_name",  LastName "last_name" from Employee

--Write a query to get unique department ID from employee table
select distinct DeptName from Employee

--Write a query to get all employee details from employee table display in descending order
select * from Employee order by FirstName desc

--Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column
select FirstName, LastName, Salary,City,DeptName, Salary*0.12 PF from Employee

--Write a query to get total salaries payable to all employees from employee table
select sum(Salary) as SumOfSalary from Employee

--Write a query to get max and min salary of employee
select max(salary) as MaxSalary, min(Salary) as MinSalary from Employee

--Write a query to get number of employees are working in company
select count(*)as CountOfEmp from Employee

--Write a query to get the number of unique designation in the company
select distinct DeptName from Employee

--Write a query to display emp_name as ‘Name’ in upper case
select UPPER(FirstName)as Name from Employee

--Write a query to get first 10 records from the employee table
select FirstName from Employee   