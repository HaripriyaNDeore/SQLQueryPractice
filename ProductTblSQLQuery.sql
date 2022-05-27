Create table Product(
ProductId int primary key identity(1,1),
ProductName varchar(20),
Price int,
)

insert into Product values('Laptop',60000)
insert into Product values('Mobile',17000)
insert into Product values('TV',60000)
insert into Product values('MusicSystem',12000)
insert into Product values('HP Laptop',60000)
--15.Use the MIN function to select the record with the smallest value of the Price column.
select min(Price) from Product

--16.Use an SQL function to select the record with the highest value of the Price column.
select max(Price) from Product

--17.Use the correct function to return the number of records that have the Price value set to 20
select count(*) from Product where Price = 20

--18.Use an SQL function to calculate the average price of all products.
select avg(Price) from Product

--19.Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(Price) from Product

--31.Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from Product where Price between 20 and 22

--32.Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from Product where Price not between 20 and 22

--33.Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from Product where ProductName in('Geitost','Pavlova')


--34.When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select PostalCode 'pno' from Customer
