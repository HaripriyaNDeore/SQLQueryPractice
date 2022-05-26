create table Courses(
Id int,
Name varchar(20),
constraint pk_course primary key (Id))

select * from Orders
alter table Courses add ctrainer varchar(20),ctrainerExp int,fees int

alter table Courses add constraint pk_Courses primary key(Id)

truncate table course

sp_help Orders

create table Orders(
orderId int,
orderNo int,
PersonId int,
constraint pk_order primary key (orderId),
constraint pk_order_person foreign key (PersonId)references person([PersonId])
)

alter table Orders add constraint pk_order_person



foreign key (PersonId)references person(PersonId)

alter table orders drop constraint pk_order_person

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