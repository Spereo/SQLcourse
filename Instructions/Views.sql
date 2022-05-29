USE InsuranceCompanyDB
GO
-------------------------------------------------------------------------------------------------------------------------
/* ѕредставление, созданное дл€ быстрой св€зи с исследователем, закреплЄнным за проектом */
CREATE VIEW CallBackResearcher
AS
	SELECT sd.ProjectID, sd.ResearcherID, sd.ServiceID, s.[Name] AS ServiceName, sdesc.[Description] AS ServiceDescription,
	sd.[Name] AS ProjectName, sd.[Description] AS ProjectDescription, r.Phone, r.EmailAddress
	FROM dbo.ServiceDevelopment AS sd
	INNER JOIN dbo.Researcher AS r ON sd.ResearcherID = r.ResearcherID
	INNER JOIN dbo.[Service] AS s ON sd.ServiceID = s.ServiceID
	INNER JOIN dbo.ServiceDescription AS sdesc ON s.ServiceID = sd.ServiceID
GO
-------------------------------------------------------------------------------------------------------------------------
/* ѕредставление, вывод€щее полную информацию о пользовател€х в виде одной таблицы */
CREATE VIEW CustomerFullInformation
AS
	SELECT cu.CustomerID, cu.FirstName, cu.LastName, cu.Patronymic, cu.Gender, cu.MaritalStatus, cu.EmailAddress, cu.Phone,
	ca.AddressLine1, ca.AddressLine2, cp.PropertyCategoryID, pc.[Name], cp.[Description]
	FROM dbo.Customer AS cu
	INNER JOIN dbo.CustomerAddress AS ca ON cu.CustomerID = ca.CustomerID
	INNER JOIN dbo.CustomerProperty AS cp ON cu.CustomerID = cp.CustomerID
	INNER JOIN dbo.PropertyCategory AS pc ON cp.PropertyCategoryID = pc.PropertyCategoryID;
GO
-------------------------------------------------------------------------------------------------------------------------
/* ѕредставление, созданное дл€ заполнени€ таблицы CustomerProperty, с дополнительной проверкой столбца MarketValue.
»мущество, рыночна€ стоимость которого ниже 1000 единиц, не подлежит страхованию */
CREATE VIEW FillCustomerProperty
AS
	SELECT CustomerID, PropertyCategoryID, [Description], MarketValue FROM dbo.CustomerProperty
	WHERE MarketValue > 1000
	WITH CHECK OPTION;
GO
INSERT INTO FillCustomerProperty VALUES
(11, 1, 'Modest villa in California', 100)
GO
-------------------------------------------------------------------------------------------------------------------------
