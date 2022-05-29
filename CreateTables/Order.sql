USE InsuranceCompanyDB
GO

CREATE TABLE dbo.[Order](
	OrderID int IDENTITY(1,1) NOT NULL,
	CustomerID int NOT NULL,
	ServiceID int NOT NULL,
	PurchasingDate nvarchar(30) NULL,
	StartDate nvarchar(30) NULL,
	ExpirationDate nvarchar(30) NULL
)
GO

ALTER TABLE dbo.[Order]
ADD CONSTRAINT PK_Order_OrderID PRIMARY KEY CLUSTERED (OrderID)
GO

ALTER TABLE dbo.[Order]
WITH CHECK ADD CONSTRAINT FK_Order_Customer FOREIGN KEY (CustomerID)
REFERENCES dbo.Customer (CustomerID)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE dbo.[Order]
WITH CHECK ADD CONSTRAINT FK_Order_Service FOREIGN KEY (ServiceID)
REFERENCES dbo.[Service] (ServiceID)
ON UPDATE CASCADE
GO