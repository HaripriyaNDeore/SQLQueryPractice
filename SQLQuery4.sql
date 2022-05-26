USE [Practice]
GO

SELECT [PersonId]
      ,[PersonName]
      ,[city]
  FROM [dbo].[person]

GO

alter table person alter column PersonId int not null

alter table person add constraint pk_person primary key(PersonId)
