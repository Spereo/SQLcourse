USE InsuranceCompanyDB
GO

CREATE TABLE dbo.ServiceDevelopment(
	ProjectID int IDENTITY(1,1) NOT NULL,
	ResearcherID int NOT NULL,
	ServiceID int NULL,
	[Name] nvarchar(50) NOT NULL,
	[Description] nvarchar(500) NOT NULL,
)
GO

ALTER TABLE dbo.ServiceDevelopment
ADD CONSTRAINT PK_ServiceDevelopment_ProjectID PRIMARY KEY CLUSTERED (ProjectID)
GO

ALTER TABLE dbo.ServiceDevelopment
WITH CHECK ADD CONSTRAINT FK_ServiceDevelopment_Service FOREIGN KEY (ServiceID)
REFERENCES dbo.[Service] (ServiceID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE dbo.ServiceDevelopment
WITH CHECK ADD CONSTRAINT FK_ServiceDevelopment_Researcher FOREIGN KEY (ResearcherID)
REFERENCES dbo.Researcher (ResearcherID)
ON UPDATE CASCADE
GO