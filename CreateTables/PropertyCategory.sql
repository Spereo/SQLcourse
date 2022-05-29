USE InsuranceCompanyDB
GO

CREATE TABLE dbo.PropertyCategory(
	PropertyCategoryID int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(50) NOT NULL
)
GO

ALTER TABLE dbo.PropertyCategory
ADD CONSTRAINT PK_PropertyCategory_PropertyCategoryID PRIMARY KEY CLUSTERED (PropertyCategoryID)
GO