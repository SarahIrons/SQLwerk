create proc dbo.uspGetAddress3 @City nvarchar(30), @PostalCode nvarchar(10)
as
select*from Person.Address
where City like @City +'%' and PostalCode like @PostalCode 
go
exec dbo.uspGetAddress3 @City='New', @PostalCode='[98]%'

create procedure dbo.uspGetAddress4 @CityName nvarchar(30) output
as
select City from person.Address
where AddressID = 38 and PostalCode = 48226
go
--city name was 'Detroit' with the above input--

declare @CityName nvarchar(30)
exec dbo.uspGetAddress4 @CityName = @CityName output
print @CityName