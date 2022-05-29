USE InsuranceCompanyDB
GO

CREATE TABLE dbo.CustomerProperty(
	PropertyID int IDENTITY(1,1) NOT NULL,
	CustomerID int NOT NULL,
	PropertyCategoryID int NOT NULL,
	[Description] nvarchar(500) NOT NULL,
	MarketValue int NOT NULL
)
GO

ALTER TABLE dbo.CustomerProperty
ADD CONSTRAINT PK_CustomerProperty_PropertyID PRIMARY KEY CLUSTERED (PropertyID)
GO

ALTER TABLE dbo.CustomerProperty
WITH CHECK ADD CONSTRAINT FK_CustomerProperty_Customer FOREIGN KEY (CustomerID)
REFERENCES dbo.Customer (CustomerID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE dbo.CustomerProperty
WITH CHECK ADD CONSTRAINT FK_CustomerProperty_PropertyCategory FOREIGN KEY (PropertyCategoryID)
REFERENCES dbo.PropertyCategory (PropertyCategoryID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO