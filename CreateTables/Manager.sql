USE InsuranceCompanyDB
GO

CREATE TABLE dbo.Manager(
	ManagerID int IDENTITY(1,1) NOT NULL,
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,
	Patronymic nvarchar(50) NULL,
	EmailAddress nvarchar(50) NOT NULL,
	Phone nvarchar(25) NOT NULL
)
GO

ALTER TABLE dbo.Manager
ADD CONSTRAINT PK_Manager_ManagerID PRIMARY KEY CLUSTERED (ManagerID)
GO

ALTER TABLE dbo.Manager
ADD CONSTRAINT Manager_UniqueEmail UNIQUE (EmailAddress)
GO

ALTER TABLE dbo.Manager
ADD CONSTRAINT Manager_UniquePhone UNIQUE (Phone)
GO