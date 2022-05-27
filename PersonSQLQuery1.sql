create database Practice

Create table person(
PersonId int,
PersonName varchar(20),
)

alter table person add city varchar(20)

select * from person

alter table person alter column PersonName varchar(40)

alter table person alter column PersonName varchar(40)not null

--check constraints

select * from person

create table person(
PersonId int,
name varchar(40),
age int,
country varchar(20)default'India'
constraint chk_age check(age>=18)
)

sp_help person

alter table person add age int not null

alter table person add constraint chk_age check(age>=18)

alter table person drop constraint chk_age
--mysql
--alter table person drop check chk_age

--table is already exist & you want to add column deafult value
alter table person add country varchar(20)default'India'

--column is already exist & you want to add deafult constraints
alter table person add constraint default_con default 'india' for country

--mysql
--alter table person alter country set deafult 'india'
--oracle
--alter table person modify country default 'india'

--Add index on Primary key column and non primary key in SQL

create index index_person on person (PersonName,country);

create unique index index_person2 on person(PersonId);

select * from person
--ms sql server
--drop index person index_person2
--mysql
--alter table person drop index index_person2

--identity
create table person(
PersonId int primary key identity(1,1)
)
--mysql
create table person(
PersonId int primary key autoincrement
)

--if you create table alredy then use following query
alter table person add PersonId int identity(1,1)

select * from person
insert into person values(1,'Pooja','pune',20,'india')
insert into person values(2,'Priya','Mumabai',21,'india')
insert into person values(3,'Riya','Nashik',22,'india')
insert into person values(4,'Raghav','pune',20,'india')
insert into person values(5,'Adhya','Mumabai',21,'india')
insert into person values(6,'Sai','Nashik',22,'india')
insert into person values(7,'Shahu','pune',20,'india')
insert into person values(8,'Tanvish','Mumabai',21,'india')
insert into person values(9,'Hrudya','Nashik',22,'india')
insert into person values(10,'Mrunmai','Nashik',22,'india')
--use this query you want to add all column values and add default value as you set before
insert into person (PersonId,PersonName,city,age)values(4,'Raj','Pune',20)

--update query

update person set country='UK' where PersonId=8

update person set PersonName='Riyansh' where PersonId=3

--DQL select

select PersonName,age from person
select PersonName,age from person where PersonId=4;

select * from person where PersonId=1;

select * from person where PersonId<3
select * from person where PersonId<=3
select * from person where PersonId>=3
select * from person where PersonId>3
select * from person where city='nashik'
select * from person where age>21
--not operator <>
--it not show the record of PersonId 3
select * from person where PersonId<>3

select distinct country from person

select * from person

--to display data betwen the range between and operator

select * from person where age between 20 and 22

--in operator select the multiple possible values
select * from person where PersonId in(1,2,3)
select * from person where country in('USA','europe')
select * from person where country not in('USA','europe','Uk')
select * from person where country in('USA','india')


--and/or/not/operator
select * from person where country ='USA' or country='UK'
select * from person where country ='USA' and age>=22


select *from person where not country='UK'
--working is same as <>
select *from person where  country<>'UK'


insert into person values(11,'vaibhav','pune',26,'india')
insert into person values(12,'Supriya','Mumbai',25,'india')
insert into person values(13,'Jagruti','pune',23,'USA')
insert into person values(14,'Sneha','Nashik',26,'india')
insert into person values(15,'Krush','Jalgaon',22,'Europe')

--like operator in sql
--it will print the person name which is start from v
select * from person where PersonName like'v%'

--it will print the person name which is end with a
select * from person where PersonName like'%a'

--it will print the person name strat with and end with any letter but having i character
select * from person where PersonName like'%i%'
--eg
select * from person where PersonName like'%aj%'

--full match letter start with R having next 2 more letters denoted by underscore__
select * from person where PersonName like'R__'

select * from person where PersonName like'[a-j]%'

select * from person where PersonName like'[an]%'
'[an]%''[a-j]%'

--like operator in sql with not operator

select * from person where PersonName not like'v%'
select * from person where PersonName not like'%a'
select * from person where PersonName not like'%i%'
select * from person where PersonName not like'%aj%'
select * from person where PersonName not like'S__'

--null values in sql
--is not null
select * from person where country is null
select * from person where country is not null
insert into person values(16,'Swaraj','malegaon',21,null)

--it will change the column name to display here Original column name is PersonName and it change with Person_Name
select PersonName as Person_Name from person 

--order by clause in sql -sort the data
select * from person order by country desc

--Aggregate function
--1.Count 2.sum 3.avg 4. max 5.min

---group by clouse
---group by groups rows that have a same values into the summary
--e.g find no of person in each country
--group the similar col data -country,count
--rules 
--1.group by statement can be used with aggregate function
--2.rule the column that we will put in the group by clouse that can be
--used with select statement

--it will display the country with person count
select country from person
select country,count (PersonId) as PersonCount from person
group by country

--it will display the country with city count
select city from person
select city,count (PersonId) as CityCount from person
group by city
