select * 
from [dbo].[T_Price_History_20160404]

Select *
From [dbo].[StockTickData]


INSERT INTO [dbo].[StockTickData] (StockSymbol, TickDate, OpenPrice, HighPrice, LowPrice, ClosePrice, Volume)
SELECT 'T', [Date], [Open], High, Low, [Close], Volume 
FROM [dbo].[T_Price_History_20160404]

/*
CREATE TABLE [dbo].[StockTickData](
	[StockTickDataID] [int] IDENTITY(1,1) NOT NULL,
	[StockSymbol] [varchar](10) NULL,
	[TickDate] [datetime] NULL,
	[OpenPrice] [money] NULL,
	[HighPrice] [money] NULL,
	[LowPrice] [money] NULL,
	[ClosePrice] [money] NULL,
	[Volume] [int] NULL,
 CONSTRAINT [PK_StockTickData] PRIMARY KEY CLUSTERED 
(
	[StockTickDataID] ASC
))
*/