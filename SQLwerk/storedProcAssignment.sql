create procedure dbo.uspGetAddress
as
select * from Person.Address
go
exec dbo.uspGetAddress

/*I then dropped the procedure from the menue under stored procedures/*

create procedure dbo.uspGetAddress2 @City nvarchar(30)
as
select*from Person.Address
where City like @city + '%'
go
exec dbo.uspGetAddress2 @city = 'new'--

exec dbo.uspGetAddress2 @city = 'new'