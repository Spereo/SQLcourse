USE InsuranceCompanyDB
GO

CREATE TABLE dbo.ServiceDescription(
	DescriptionID int IDENTITY(1,1) NOT NULL,
	ServiceID int NOT NULL,
	[Description] nvarchar(500) NOT NULL,
	ModifiedDate datetime NOT NULL
)
GO

ALTER TABLE dbo.ServiceDescription
ADD CONSTRAINT PK_ServiceDescription_DescriptionID PRIMARY KEY CLUSTERED (DescriptionID)
GO

ALTER TABLE dbo.ServiceDescription
WITH CHECK ADD CONSTRAINT FK_ServiceDescription_Service FOREIGN KEY (ServiceID)
REFERENCES dbo.[Service] (ServiceID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO