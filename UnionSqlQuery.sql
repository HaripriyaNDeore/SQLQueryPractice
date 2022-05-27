--Union 
--Combine the result set of two or more select statement
--Rules.
--1.Each select statement in union must have same no of colummn
--2.Data types must be same of column that we adding/using with select
--3.Each select must be in same order of column


select city,country from Customer where city='pune'
--union 
--select city,country from Supplier where city='pune'
union 
select city,country from Person where city='pune'
