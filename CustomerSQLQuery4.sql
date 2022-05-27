Create table Customer(
CustId int primary key identity(1,1),
FirstName varchar(20),
LastName varchar(20),
City varchar(20),
PostalCode int,
Country varchar(20),
)

select * from Customer
insert into Customer values('Shital','Patil','Nashik',234354,'india')
insert into Customer values('John','Tim','Berlin',234454,'germony')
insert into Customer values('Anuja','Patil','London',234354,'UK')
insert into Customer values('Shambhu','nikam','Nashik',121110,'Norway')
insert into Customer values('Tom','lee','Berlin',234454,'germony')
insert into Customer values('gargi','Patil','Nashik',234354,'india')
insert into Customer values('Remo','Kaif','London',121110,'UK')
insert into Customer values('Nishant','Patil','Nashik',234354,'France')
insert into Customer values('Raj','pawar','Berlin',234454,'germany')
insert into Customer values('Shiv','rao','Nashik',234354,'Norway')
insert into Customer values('Mital','Patil','London',121110,'UK')

--1.Write a statement that will select the City column from the Customers table
select City from Customer

--2.Select all the different values from the Country column in the Customers table.
select distinct Country as Country_Name from Customer

--3.Select all records where the City column has the value "London"
select * from Customer where City='London'

--4.Use the NOT keyword to select all records where City is NOT "Berlin".
select * from Customer where not City='Berlin'

--5.Select all records where the CustomerID column has the value 23.
select * from Customer where CustId=23

update Customer set PostalCode=121110 where City='Berlin'
--6.Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select* from Customer where City='Berlin' and PostalCode=121110

--7.Select all records where the City column has the value 'Berlin' or 'London'.
select * from Customer where City='Berlin' or City='London'

--8.Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Customer order by City 

--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from Customer order by City desc

--10.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from Customer order by Country,City

--11.Select all records from the Customers where the PostalCode column is empty.
select * from Customer where PostalCode is not null

--12.Select all records from the Customers where the PostalCode column is NOT empty.
select * from Customer where PostalCode is not null

--13.Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
UPDATE Customer SET City = 'Oslo' WHERE Country = 'Norway';


--14.Delete all the records from the Customers table where the Country value is 'Norway'.
delete from Customer where Country='Norway'

update Customer set City='Amrutsar' where FirstName='Shiv'
--20.Select all records where the value of the City column starts with the letter "a".
select * from Customer where City like'A%'


--21.Select all records where the value of the City column ends with the letter "k".
select * from Customer where City like'%K'

--22.Select all records where the value of the City column contains the letter "a".
select * from Customer where City like'%a%'

--23.Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from Customer where City like 'a%b'

--24.Select all records where the value of the City column does NOT start with the letter "a".
select * from Customer where City not like 'a%'

--25.Select all records where the second letter of the City is an "a".
select * from Customer where City like '_a%'

--26.Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from Customer where City like '[acs]%';

--27.Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from Customer where City like '[a-f]%'

--28.Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from Customer where City not like '[acf]%'

--29.Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from Customer where Country in ('Norway', 'France')

--30.Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from Customer where Country not in ('Norway', 'France')




