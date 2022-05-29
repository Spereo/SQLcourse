USE InsuranceCompanyDB
GO

CREATE TABLE dbo.CustomerAddress(
	CustomerID int NOT NULL,
	AddressLine1 nvarchar(60) NOT NULL,
	AddressLine2 nvarchar(60) NULL,
	City nvarchar(30) NOT NULL,
	StateProvince nvarchar(50) NOT NULL,
	CountryRegion nvarchar(50) NOT NULL,
	PostalCode nvarchar(15) NOT NULL,
)
GO

ALTER TABLE dbo.CustomerAddress
WITH CHECK ADD CONSTRAINT FK_CustomerAddress_Customer FOREIGN KEY (CustomerID)
REFERENCES dbo.Customer (CustomerID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO