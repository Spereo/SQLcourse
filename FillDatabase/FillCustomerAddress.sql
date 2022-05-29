USE InsuranceCompanyDB
GO

INSERT INTO dbo.CustomerAddress (CustomerID, AddressLine1, AddressLine2, City, StateProvince, CountryRegion, PostalCode) VALUES
(70, '42500 W 76th St', NULL, 'Chicago', 'Illinois', 'United States', '60610'),
(71, '4255 East Lies Road', NULL, 'Carol Stream', 'Illinois', 'United States', '60188'),
(72, '2509 W. Frankford', NULL, 'Carrollton', 'Texas', 'United States', '75006'),
(73, '250880 Baur Blvd', NULL, 'Saint Louis', 'Missouri', 'United States', '63103'),
(74, '6030 Robinson Road', NULL, 'Jefferson City', 'Missouri', 'United States', '65101'),
(75, '9995 West Central Entrance', NULL, 'Duluth', 'Minnesota', 'United States', '55802'),
(76, '9903 Highway 6 South', NULL, 'Houston', 'Texas', 'United States', '77003'),
(77, '44025 W. Empire', NULL, 'Denby', 'South Dakota', 'United States', '57716'),
(78, '23025 S.W. Military Rd.', NULL, 'San Antonio', 'Texas', 'United States', '78204'),
(79, 'Ring Plaza', NULL, 'Norridge', 'Illinois', 'United States', '60706'),
(80, 'Garamonde Drive, Wymbush', 'PO Box 4023', 'Milton Keynes', 'England', 'United Kingdom', 'MK8 8ZD'),
(81, 'Bradford', 'Raven House, Kingsgate', 'W. York', 'England', 'United Kingdom', 'BD1 4SJ'),
(82, 'Garamonde Drive, Wymbush', 'P.O. Box 803', 'Milton Keynes', 'England', 'United Kingdom', 'MK8 8ZD'),
(83, '8713 Yosemite Ct.', NULL, 'Bothell', 'Washington', 'United States', '98011'),
(84, '9228 Via Del Sol', NULL, 'Phoenix', 'Arizona', 'United States', '85004'),
(85, '22580 Free Street', NULL, 'Toronto', 'Ontario', 'Canada', 'M4B 1V7'),
(86, 'Station E', NULL, 'Chalk Riber', 'Ontario', 'Canada', 'K0J 1J0'),
(87, '575 Rue St Amable', NULL,'Quebec', 'Quebec', 'Canada', 'G1R'),
(88, '6333 Cote Vertu', NULL, 'Montreal', 'Quebec', 'Canada', 'H1Y 2H7'),
(89, '400-25155 West Pender St', NULL, 'Vancouver', 'British Columbia', 'Canada', 'V7L 4J4'),
(90, '9992 Whipple Rd', NULL, 'Union City', 'California', 'United States', '94587'),
(91, 'Corporate Office', NULL, 'El Segundo', 'California', 'United States', '90245'),
(92, '25001 Montague Expressway', NULL, 'Milpitas', 'California', 'United States', '95035'),
(93, '2575 West 2700 South', NULL, 'Salt Lake City', 'Utah', 'United States', '84101')

SELECT * FROM dbo.CustomerAddress