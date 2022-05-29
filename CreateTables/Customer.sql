USE InsuranceCompanyDB
GO

CREATE TABLE dbo.Customer(
	CustomerID int IDENTITY(1,1) NOT NULL,
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,
	Patronymic nvarchar(50) NULL,
	Gender nvarchar(25) NOT NULL,
	MaritalStatus nvarchar(25) NOT NULL,
	EmailAddress nvarchar(50) NULL,
	Phone nvarchar(25) NOT NULL,
	ManagerID int NOT NULL
)
GO

ALTER TABLE dbo.Customer
ADD CONSTRAINT UniqueEmail UNIQUE (EmailAddress)
GO

ALTER TABLE dbo.Customer
ADD CONSTRAINT UniquePhone UNIQUE (Phone)
GO

ALTER TABLE dbo.Customer
ADD CONSTRAINT PK_Customer_CustomerID PRIMARY KEY CLUSTERED (CustomerID)
GO

ALTER TABLE dbo.Customer
WITH CHECK ADD CONSTRAINT FK_Customer_Manager FOREIGN KEY (ManagerID)
REFERENCES dbo.Manager (ManagerID)
ON UPDATE CASCADE
GO