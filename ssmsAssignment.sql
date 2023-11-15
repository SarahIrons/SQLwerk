begin try
	select 1000/0 as Result;
end try

begin catch
	select
	error_number() as [Error_Code],
	ERROR_PROCEDURE() as [Invalid_Proc],
	ERROR_MESSAGE() as [Error_Details];
end catch
