--sql buid in function
--substring,concat,len,upper,trim,ltrim,rtrim,replace,reverse

select * from Employee
--1.Substring
select SUBSTRING(FirstName,0,4)as Tname from Employee where EmpId=7

--2.Concat
select CONCAT(FirstName,' ',LastName)as FullName from Employee

--3.len
select FirstName,LEN(FirstName)as length from Employee

--4.Upper
select UPPER(FirstName) as FirstName from Employee

--5.Lower
select LOWER(FirstName) as FirstName from Employee

--6.Round
update Employee set Salary=13950.99 where EmpId=5
select ROUND(235.415, 0) as RoundValue
select CAST(Salary as varchar(20))from Employee
select ROUND(Salary,10)as Salary from Employee where EmpId=5

--7.CAST
select CAST(Salary as varchar(20))from Employee

--8.REVERSE
select REVERSE(FirstName) as ReverseName from Employee

--9.RANK
SELECT RANK() over(order by Salary  desc) from Employee

--10.REPLACE
select REPLACE(FirstName,'Pooja','Priya')as info from Employee