USE InsuranceCompanyDB
GO

CREATE TABLE dbo.Terms(
	TermID int IDENTITY(1,1) NOT NULL,
	ServiceID int NOT NULL,
	[Case] nvarchar(50) NOT NULL,
	AdditionalTerms nvarchar(500) NOT NULL,
	CompensationPercent tinyint NOT NULL
)
GO

ALTER TABLE dbo.Terms
ADD CONSTRAINT PK_Terms_TermID PRIMARY KEY CLUSTERED (TermID)
GO

ALTER TABLE dbo.Terms
WITH CHECK ADD CONSTRAINT FK_Terms_Service FOREIGN KEY (ServiceID)
REFERENCES dbo.[Service] (ServiceID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO