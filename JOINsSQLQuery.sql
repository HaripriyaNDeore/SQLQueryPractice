select * from Product
select * from person
select * from Orders


--add  primary key in order table
--alter table Orders add constraint pk_Order primary key(orderId)
insert into Orders values(1,1,1)
insert into Orders values(2,2,2)
insert into Orders values(3,4,3)
insert into Orders values(4,5,4)
insert into Orders values(5,3,5)

--alter table Orders
--add foreign key (ProductId) references Product(ProductId)

--1.Inner Join
select p.PersonName,p.city,p.age,p.country
from person p
inner join Orders o on  o.PersonId=p.PersonId

--2.Inner Join with where clause
select p.PersonName,p.city,p.age,p.country
from person p
inner join Orders o on  o.PersonId=p.PersonId
where p.PersonId=3

--3.left Join   return all record from left table and matches data from right table
select p.PersonName,p.city,p.age,p.country
from person p
left join Orders o on  o.PersonId=p.PersonId
where p.PersonId=3

--4.right Join   return all record from right table and matches data from left table
select p.PersonName,p.city,p.age,p.country
from person p
right join Orders o on  o.PersonId=p.PersonId
where p.PersonId=3

--4.full Join   return all record from right table and matches data from left table
select p.PersonName,p.city,p.age,p.country
from person p
full join Orders o on  o.PersonId=p.PersonId
where p.PersonId=5


--5.Self Join    join a sametable to itself
--this query is run in Master database because it store in in Master otherwise it show the error
select e1.FirstName as EmpName,e2.FirstName as ManagerName
from Employee e1,Employee e2
where e1.managerid=e2.EmpId

--create table for study

create table tblStudy(
studId varchar(5),
courseId varchar(5),
year int
)

insert into tblStudy values('s1','c1',2016)
insert into tblStudy values('s2','c2',2017)
insert into tblStudy values('s1','c2',2017)

select * from tblStudy

-- find the student id, year who enroll for different course with their year
select * from tblStudy
select s1.studId,s1.courseId,s1.year
from tblStudy s1,tblStudy s2
where s1.studId=s2.studId and s1.courseId<>s2.courseId and s1.year<>s2.year

--6.Cross join    cartesian join
--It is used to generate combination of each row of first table with each rows of second table
--eg.
--	breafast
--	1.poha
--	2.Upma

--	Drink
--	1.Tea
--	2.Cofee

--	Result
--	poha Tea
--	Poha Upma
--	Upma Tea
--	Upma Cofee