USE InsuranceCompanyDB
GO

INSERT INTO dbo.ServiceDescription (ServiceID, [Description], ModifiedDate) VALUES
(1, 'Economy default insurance', '2002-06-01 00:00:00.000'),
(2, 'Express insurance includes priority consideration of your request', '2002-06-01 00:00:00.000'),
(3, 'Express Advanced insurance includes priority consideration of your request under the groups below and a personal insurance agent', '2004-07-01 00:00:00.000'),
(4, 'Premium insurance serves customers with premium level of housing', '2005-08-01 00:00:00.000'),
(5, 'Premium Advanced insurance serves customers with premium level of housing and includes a personal insurance agent', '2005-08-01 00:00:00.000')

SELECT * FROM dbo.ServiceDescription