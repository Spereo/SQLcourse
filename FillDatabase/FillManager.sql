USE InsuranceCompanyDB
GO

INSERT INTO dbo.Manager (FirstName, LastName, EmailAddress, Phone) VALUES
('Kathleen', 'McDonald', 'kathleen_mcdonald25@gmail.com', '+239-218-7143'),
('Reynold', 'Small', 'reynold_small31@gmail.com', '+303-216-1440'),
('Fred', 'Hughes', 'fred_hughes38@gmail.com', '+303-218-8834'),
('Dianne', 'Grant', 'dianne_grant32@gmail.com', '+239-206-5407'),
('Alfredo', 'Carpenter', 'alfredo_carpenter40@gmail.com', '+210-203-4779'),
('Linda', 'Clark', 'linda_clark39@gmail.com', '+203-204-5810'),
('Anthony', 'Williams', 'anthony_williams41@gmail.com', '+229-206-0920'),
('Dustin', 'Walters', 'dustin_walters42@gmail.com', '+231-203-3492'),
('Elizabeth', 'Perkins', 'elizabeth_perkins51@gmail.com', '+231-204-3523')

UPDATE Manager SET Patronymic = 'Taylor' WHERE ManagerID = 16
UPDATE Manager SET Patronymic = 'Teodor' WHERE ManagerID = 21

SELECT * FROM Manager