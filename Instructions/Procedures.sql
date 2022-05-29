USE InsuranceCompanyDB
GO
-------------------------------------------------------------------------------------------------------------------------
/* Процедура, выводящая список не принятых заказов, закреплённых за менеджером */
CREATE PROCEDURE pr_ActiveOrdersForManager(@ManagerID int)
AS
BEGIN
	SELECT o.OrderID, o.CustomerID, o.ServiceID, o.PurchasingDate, o.StartDate, o.ExpirationDate FROM dbo.[Order] AS o
	INNER JOIN dbo.Customer AS cu ON o.CustomerID = cu.CustomerID
	INNER JOIN dbo.Manager as m ON cu.ManagerID = m.ManagerID
	WHERE m.ManagerID = @ManagerID AND (o.PurchasingDate IS NULL)
END;
GO
-------------------------------------------------------------------------------------------------------------------------
/* Процедура, позволяющая выставить сегодняшнюю дату на указанном ещё не принятом заказе, тем самым приняв его,
а затем вывести данный (принятый) заказ */
CREATE PROCEDURE pr_TakeTheOrder(@OrderID int)
AS
BEGIN
	DECLARE @Check datetime
	SET @Check = (SELECT PurchasingDate FROM dbo.[Order] WHERE OrderID = @OrderID)
	IF @Check IS NULL
	BEGIN
		UPDATE dbo.[Order] SET PurchasingDate = GETDATE() WHERE OrderID = @OrderID
	END;
	ELSE
	BEGIN
		PRINT 'The order' + CONVERT(nvarchar, @OrderID) + 'has already been taken!'
	END;
	SELECT o.OrderID, o.CustomerID, o.ServiceID, o.PurchasingDate, o.StartDate, o.ExpirationDate FROM dbo.[Order] AS o
	WHERE OrderID = @OrderID
END;
GO
-------------------------------------------------------------------------------------------------------------------------
/* Процедура, позволяющая вывести среднюю, наименьшу и наибольшую суммы заказов для всех пользователей, а затем
определить и вывести отклонения как в большую, так и в меньшую стороны.
Процедура полезна для составления статистики отделом исследований (Researcher) */
CREATE PROCEDURE pr_ShowStatistics
AS
BEGIN
	DECLARE @Min int, @Max int, @Avg int, @VarianceMin int, @VarianceMax int
	SET @Min = dbo.fn_GetOrdersMinimalDue()
	SET @Max = dbo.fn_GetOrdersMaximalDue()
	SET @Avg = dbo.fn_GetOrdersAverageDue()
	SET @VarianceMin = @Avg - @Min
	SET @VarianceMax = @Max - @Avg
	SELECT @Avg AS Average, @Min AS Minimum, @VarianceMin AS VarianceMin, @Max AS Maximum, @VarianceMax AS VarianceMax		
END;
GO
-------------------------------------------------------------------------------------------------------------------------
/* Процедура, предназначенная для поиска и вывода столбцов из указанной таблицы, содержащих заданную строку */
CREATE PROCEDURE pr_FindSring(@Name nvarchar(20), @StringToFind nvarchar(500))
AS
BEGIN
	DECLARE @Schema AS NVARCHAR(20) = 'dbo'
	DECLARE @column AS NVARCHAR(500)
	DECLARE @Ask AS NVARCHAR(500)

	DECLARE c1 CURSOR LOCAL FAST_FORWARD
	FOR
		SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
		WHERE (DATA_TYPE = 'nvarchar' OR DATA_TYPE ='char' OR DATA_TYPE ='nchar' OR DATA_TYPE ='varchar' OR DATA_TYPE ='nvarchar'
			OR DATA_TYPE ='text' OR DATA_TYPE = 'ntext') AND TABLE_NAME = @Name AND table_schema = @Schema
	OPEN c1
	WHILE (1=1)
	BEGIN
		FETCH c1 INTO @column
		IF @@FETCH_STATUS <> 0 BREAK
		SET @Ask = 'select ['+ @column + '] from ['+@Schema+'].['+ @Name+ '] where ['+@column+'] like '+ '''%' + @stringToFind + '%'''
		EXECUTE (@Ask)
	END
	CLOSE c1
	DEALLOCATE c1
END
GO
-------------------------------------------------------------------------------------------------------------------------