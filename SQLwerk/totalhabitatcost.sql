use db_zootest02
go

declare @totalHab money;
declare @totalNut money;
declare @results money;

set @totalHab = (select sum(habitat_cost) from tbl_habitat);
set @totalNut = (select sum(nutrition_cost) from tbl_nutrition);
set @results = (@totalHab + @totalNut);

Print (
convert(varchar(50),@totalHab) + char(9) + '- The Total Habitat Cost' + char(13) + 
convert(varchar(50), @totalNut) + char(9) + ' - The Total Nutrition Cost' + char(13) + '------------' + char(13) + convert(varchar(50),@results)
);