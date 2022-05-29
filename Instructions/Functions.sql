USE InsuranceCompanyDB
GO
-------------------------------------------------------------------------------------------------------------------------
--Средняя сумма приобретённых всеми пользователями страховых услуг
CREATE FUNCTION dbo.fn_GetOrdersAverageDue()
RETURNS int
AS
BEGIN
	DECLARE @AvgDue int 
	SELECT @AvgDue =
		(SELECT AVG(s.Price) FROM dbo.[Order] AS o 
		INNER JOIN dbo.[Service] AS s ON o.ServiceID = s.ServiceID)
	RETURN @AvgDue
END;
GO
-------------------------------------------------------------------------------------------------------------------------
--Минимальная сумма приобретённых всеми пользователями страховых услуг
CREATE FUNCTION dbo.fn_GetOrdersMinimalDue()
RETURNS int
AS
BEGIN
	DECLARE @MinDue int 
	SELECT @MinDue =
		(SELECT MIN(s.Price) FROM dbo.[Order] AS o 
		INNER JOIN dbo.[Service] AS s ON o.ServiceID = s.ServiceID)
	RETURN @MinDue
END;
GO
-------------------------------------------------------------------------------------------------------------------------
--Максимальная сумма приобретённых всеми пользователями страховых услуг
CREATE FUNCTION dbo.fn_GetOrdersMaximalDue()
RETURNS int
AS
BEGIN
	DECLARE @MaxDue int 
	SELECT @MaxDue =
		(SELECT MAX(s.Price) FROM dbo.[Order] AS o 
		INNER JOIN dbo.[Service] AS s ON o.ServiceID = s.ServiceID)
	RETURN @MaxDue
END;
GO
-------------------------------------------------------------------------------------------------------------------------
--Общая сумма приобретённых конкретным пользователем страховых услуг
CREATE FUNCTION dbo.fn_GetOrdersTotalDueForCustomer(@CustomerID int)
RETURNS int
AS
BEGIN
	DECLARE @TotalDue int 
	SELECT @TotalDue =
	(
		SELECT SUM(s.Price) FROM dbo.[Order] AS o 
		INNER JOIN dbo.[Service] AS s ON o.ServiceID = s.ServiceID
		WHERE CustomerID = @CustomerID
	)
	RETURN @TotalDue
END;
GO
-------------------------------------------------------------------------------------------------------------------------
--Заказы, сделанные конкретным пользователем
CREATE FUNCTION dbo.fn_GetOrdersForCustomer(@CustomerID int)
RETURNS TABLE
AS
RETURN
(
	SELECT o.OrderID, o.CustomerID, o.ServiceID, o.PurchasingDate, o.StartDate, o.ExpirationDate FROM dbo.[Order] AS o
	WHERE o.CustomerID = @CustomerID
);
GO
-------------------------------------------------------------------------------------------------------------------------
--Все заказы, закреплённые за конкретным менеджером
CREATE FUNCTION dbo.fn_GetOrdersForManager(@ManagerID int)
RETURNS TABLE
AS
RETURN
(
	SELECT o.OrderID, o.CustomerID, o.ServiceID, o.PurchasingDate, o.StartDate, o.ExpirationDate FROM dbo.[Order] AS o
	INNER JOIN dbo.Customer AS cu ON o.CustomerID = cu.CustomerID
	INNER JOIN dbo.Manager as m ON cu.ManagerID = m.ManagerID
	WHERE m.ManagerID = @ManagerID
);
GO
-------------------------------------------------------------------------------------------------------------------------