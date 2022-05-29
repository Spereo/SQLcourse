USE InsuranceCompanyDB
GO

INSERT INTO dbo.[Service] ([Name], DescriptionID, Price, DiscountPercent, OfferStartDate, OfferEndDate, DiscontinuedDate, ModifiedDate, TermsID) VALUES
('Housing Insurance Economy', 1, 750, 5, '2002-06-01 00:00:00.000', NULL, NULL, '2002-06-01 00:00:00.000', 1),
('Housing Insurance Express', 2, 1200, 5, '2002-06-01 00:00:00.000', NULL, NULL, '2002-06-01 00:00:00.000', 1),
('Housing Insurance Express Advanced', 3, 1550, 10, '2004-07-01 00:00:00.000', NULL, NULL, '2004-07-01 00:00:00.000', 1),
('Housing Insurance Premium', 4, 2750, 10, '2005-08-01 00:00:00.000', NULL, NULL, '2005-08-01 00:00:00.000', 1),
('Housing Insurance Premium Advanced', 5, 5500, 15, '2005-08-01 00:00:00.000', NULL, NULL, '2005-08-01 00:00:00.000', 1),
('Car Insurance Economy', 1, 500, 5, '2002-06-01 00:00:00.000', NULL, NULL, '2002-06-01 00:00:00.000', 2),
('Car Insurance Express', 2, 750, 5, '2002-06-01 00:00:00.000', NULL, NULL, '2002-06-01 00:00:00.000', 2),
('Car Insurance Express Advanced', 3, 1000, 10, '2004-07-01 00:00:00.000', NULL, NULL, '2004-07-01 00:00:00.000', 2),
('Car Insurance Premium', 4, 1250, 5, '2005-08-01 00:00:00.000', NULL, NULL, '2005-08-01 00:00:00.000', 2),
('Car Insurance Premium Advanced', 5, 1500, 10, '2005-08-01 00:00:00.000', NULL, NULL, '2005-08-01 00:00:00.000', 2)

SELECT * FROM dbo.[Service]