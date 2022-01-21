UPDATE [dbo].[FactResellerSales] SET [ShipDate] = DATEADD(DAY, 7, [OrderDate]) WHERE [ShipDate] IS NULL;

--Add June 2020 sales
BULK INSERT [dbo].[FactResellerSales] FROM 'C:\AllFiles\DA-100-Analyzing-Data-with-Power-BI-prod-rcc\Allfiles\DA-100-Allfiles\Resources\ResellerSales_202006.csv' WITH
(
	DATAFILETYPE = 'widechar'
	,FIRSTROW = 2
	,FIELDTERMINATOR = ','
	,ROWTERMINATOR = '\n'
	,TABLOCK
);
GO
