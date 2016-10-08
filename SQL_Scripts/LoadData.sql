declare @stockSymbol varchar(10), @tableName varchar(255), @sqlQuery_LoadStock varchar(255), @sqlQuery_DropTable varchar(255)
set @stockSymbol = 'MSFT'
set @tableName = '_Price_History_20160404'

--Load the stock
set @sqlQuery_LoadStock = 'INSERT INTO [StockTickData] (StockSymbol, TickDate, OpenPrice, HighPrice, LowPrice, ClosePrice, Volume)
							SELECT ''' + @stockSymbol + ''', [Date], [Open], High, Low, [Close], Volume 
							FROM ' + @stockSymbol + @tableName + '
							WHERE Volume != 0'
exec(@sqlQuery_LoadStock)


--Drop the table
set @sqlQuery_DropTable = 'DROP TABLE ' + @stockSymbol + @tableName
exec(@sqlQuery_DropTable)

--Verify the results
select *
from StockTickData
where StockSymbol = @stockSymbol



/*
delete from [dbo].[StockTickData]

select * from [dbo].[StockTickData]
*/