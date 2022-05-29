USE InsuranceCompanyDB
GO

INSERT INTO dbo.Customer (FirstName, LastName, Patronymic, Gender, MaritalStatus, EmailAddress, Phone, ManagerID) VALUES
('Peter', 'Parker', NULL, 'Male', 'Married', 'peter2134@gmail.com', '+203-215-5427', 18),
('Jane', 'Kerry', NULL, 'Female', 'Divorced', 'milky_ooloong@gmail.com', '+203-185-8256', 18),
('Robert', 'Hill', NULL, 'Male', 'Single', 'licunnareugra-8630@gmail.com', '+623-889-6561', 20),
('Brian', 'Rice', NULL, 'Male', 'Single', 'fadasoisepru-9010@gmail.com', '+248-323-7804', 15),
('Joel', 'Keller', NULL, 'Male', 'Married', 'groi_say_oboitro@gmail.com', '+415-410-1571', 13),
('Gina', 'Wright', 'Taylor', 'Female', 'Married', 'peonies2012@gmail.com', '+304-632-9935', 20),
('Willie', 'Gregory', NULL, 'Female', 'Single', 'williekitten321@gmail.com', '+865-809-4187', 19),
('Steve', 'Thomas', NULL, 'Male', 'Single', 'stevethommy221@gmail.com', '+817-253-5979', 15),
('Marilyn', 'Reynolds', NULL, 'Female', 'Single', 'marilyn_monreau89@gmail.com', '+201-719-2482', 19),
('Timothy', 'Gibson', NULL, 'Male', 'Married', 'timgiblololo@gmail.com', '+706-632-4660', 16),
('Scott', 'Townsend', 'Junior', 'Male', 'Divorced', 'mrscotttownsend1954@gmail.com', '+989-405-1352', 21),
('Sarah', 'Lopez', 'Barnaula', 'Female', 'Divorced', 'saharadesert54@gmail.com', '+415-648-4811', 17),
('Elaine', 'Jones', NULL, 'Female', 'Married', 'flowers_my_life@gmail.com', '+813-828-9804', 20),
('Sandra', 'Brady', NULL, 'Female', 'Single', 'sandra_happy_salamandra@gmail.com', '+240-821-8411', 13),
('John', 'Ryan', NULL, 'Male', 'Single', 'rayjohn215@gmail.com', '+904-229-2437', 18),
('Francis', 'Clark', NULL, 'Male', 'Married', 'clark_poste78@gmail.com', '+502-266-6119', 14),
('Alexander', 'McBride', 'Snicker', 'Male', 'Single', 'alexiscool228@gmail.com', '+801-980-8001', 16),
('Denise', 'Russell', NULL, 'Female', 'Married', 'russel2345612@gmail.com', '+734-481-0771', 16),
('Timothy', 'Gibson', NULL, 'Male', 'Single', 'timmy345671@gmail.com', '+214-356-6561', 13),
('Edward', 'Curry', 'Scavenger', 'Male', 'Divorced', 'scavenger1337@gmail.com', '+863-680-4391', 17),
('Regina', 'Miller', 'Tudore', 'Female', 'Married', 'tudore_never_forgive@gmail.com', '+314-974-3538', 21),
('Maria', 'Phillips', 'Pavlovna', 'Female', 'Married', 'russian_girl_inusa@gmail.com', '+731-252-7396', 20),
('Dorothy', 'Moore', NULL, 'Female', 'Single', 'meow_moor21@gmail.com', '+509-629-7396', 15),
('Richard', 'Henderson', NULL, 'Male', 'Married', 'rich_hhenderson@gmail.com', '+315-739-5934', 14)

SELECT * FROM dbo.Customer