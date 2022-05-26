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