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

--use this query you want to add all column values and add default value as you set before
insert into person (PersonId,PersonName,city,age)values(4,'Raj','Pune',20)

--update query

update person set age=24 where PersonId=3

update person set PersonName='Riyansh' where PersonId=3