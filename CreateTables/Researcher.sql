USE InsuranceCompanyDB
GO

CREATE TABLE dbo.Researcher(
	ResearcherID int IDENTITY(1,1) NOT NULL,
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,
	Patronymic nvarchar(50) NULL,
	EmailAddress nvarchar(50) NOT NULL,
	Phone nvarchar(25) NOT NULL
)
GO

ALTER TABLE dbo.Researcher
ADD CONSTRAINT PK_Researcher_ResearcherID PRIMARY KEY CLUSTERED (ResearcherID)
GO