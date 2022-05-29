USE InsuranceCompanyDB
GO

CREATE TABLE dbo.[Service](
	ServiceID int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	DescriptionID int NOT NULL,
	Price int NOT NULL,
	DiscountPercent tinyint NULL,
	OfferStartDate datetime NOT NULL,
	OfferEndDate datetime NULL,
	DiscontinuedDate datetime NULL,
	ModifiedDate datetime NOT NULL,
	TermsID int NOT NULL
)
GO

ALTER TABLE dbo.[Service]
ADD CONSTRAINT PK_Service_ServiceID PRIMARY KEY CLUSTERED (ServiceID)
GO