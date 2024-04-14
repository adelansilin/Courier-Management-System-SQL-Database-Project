-- Creation of the CourierManagementSystem database
CREATE database CourierManagementSystem;

-- Usage of the CourierManagementSystem database
USE CourierManagementSystem;

-- Creation of the User table
CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    ContactNumber VARCHAR(20),
    Address TEXT
); 

-- Insertion of data into the User table
INSERT INTO User VALUES
(1, 'Adel Mariam', 'adel.mariam@gmail.com', 'adelmariam123', '1234567890', '123 ABC Nagar, Chennai, Tamil Nadu, India'),
(2, 'Abel George', 'abel.george@gmail.com', 'abelgeorge123', '9876543210', '452 XYZ Street, Mumbai, Maharashtra, India'),
(3, 'Hemmasri', 'hemmasri@gmail.com', 'hemmasri123', '5551234567', '789 PQR Road, Kolkata, West Bengal, India'),
(4, 'Anindita Kannan', 'anindita.kannan@gmail.com', 'aninditakannan123', '5559876543', '321 LMN Colony, Bangalore, Karnataka, India'),
(5, 'Srujani', 'srujani@gmail.com', 'srujani123', '9871234567', '567 DEF Street, Hyderabad, Telangana, India'),
(6, 'Minu Fathima', 'minu.fathima@gmail.com', 'minufathima123', '1239876543', '890 GHI Nagar, Pune, Maharashtra, India'),
(7, 'Akash', 'akash@gmail.com', 'akash123', '5555555555', '234 JKL Street, Delhi, Delhi, India'),
(8, 'Ansilin George', 'ansilin.george@gmail.com', 'ansilingeorge123', '5551234567', '678 MNO Road, Chennai, Tamil Nadu, India'),
(9, 'Daisy', 'daisy@gmail.com', 'daisy123', '9875554321', '901 STU Colony, Mumbai, Maharashtra, India'),
(10, 'Tushar', 'tushar@gmail.com', 'tushar123', '5559876543', '123 UVW Street, Kolkata, West Bengal, India'),
(11, 'Antony Sujil', 'antony.sujil@gmail.com', 'antonysujil123', '5555555555', '456 XYZ Nagar, Bangalore, Karnataka, India'),
(12, 'Hiroshith', 'hiroshith@gmail.com', 'hiroshith123', '1231231234', '752 ABC Road, Hyderabad, Telangana, India'),
(13, 'Lewis', 'lewis@gmail.com', 'lewis123', '1231927234', '573 HS Road, Lucknow, Uttar Pradesh, India');

-- Display all tables in the database
show tables;

-- Retrieval of all records from the User table
SELECT * FROM User;

-- Creation of the Courier table
CREATE TABLE Courier (
    CourierID INT PRIMARY KEY,
    CustomerID INT,
    SenderName VARCHAR(255),
    SenderAddress TEXT,
    ReceiverName VARCHAR(255),
    ReceiverAddress TEXT,
    Weight DECIMAL(5 , 2 ),
    Status VARCHAR(50),
    TrackingNumber VARCHAR(20) UNIQUE,
    DeliveryDate DATE,
    ServiceID INT,
    EmployeeID INT,
    FOREIGN KEY (CustomerID)
        REFERENCES User (UserID),
    FOREIGN KEY (EmployeeID)
        REFERENCES Employee (EmployeeID),
    FOREIGN KEY (ServiceID)
        REFERENCES CourierServices (ServiceID)
); 

-- Insertion of data into the Courier table
INSERT INTO Courier VALUES
(1, 1, 'Adel Mariam', '123 ABC Nagar, Chennai, Tamil Nadu, India', 'Praveen', '777 WQD Street, Bangalore, Karnataka, India', 1.5, 'In Transit', 'ABC123456', '2024-04-15', 1, 6),
(2, 2, 'Abel George', '452 XYZ Street, Mumbai, Maharashtra, India', 'Bharath Waj', '983 MGR Road, Kolkata, West Bengal, India', 2.0, 'In Transit', 'DEF789012', '2024-04-16', 3,7),
(3, 3, 'Hemmasri', '789 PQR Road, Kolkata, West Bengal, India', 'Daisy Shekinah', '352 HGS Colony, Mumbai, Maharashtra, India', 2.8, 'Out for Delivery', 'GHI345678', '2024-04-17', 4,8),
(4, 4, 'Anindita Kannan', '321 LMN Colony, Bangalore, Karnataka, India', 'Sharan Pandian', '914 XWP Road, Hyderabad, Telangana, India', 1.2, 'Pending', 'JKL901234', '2024-04-15',3,9),
(5, 5, 'Srujani', '567 DEF Street, Hyderabad, Telangana, India', 'Elsa Jean', '620 MSO Road, Delhi, Delhi, India', 3.5, 'Delivered', 'MNO567890', '2024-04-19',2,10),
(6, 1, 'Adel Mariam', '123 ABC Nagar, Chennai, Tamil Nadu, India', 'Dhinesh Singh', '562 VSD Road, Chennai, Tamil Nadu, India', 2.3, 'Delivered', 'PQR123456', '2024-04-20',1,11),
(7, 7, 'Akash', '234 JKL Street, Delhi, Delhi, India', 'Prakash', '134 KKR Road, Bangalore, Karnataka, India', 1.9, 'In Transit', 'STU789012', '2024-04-21',2,1),
(8, 8, 'Ansilin George', '678 MNO Road, Chennai, Tamil Nadu, India', 'Cynthia', '708 CSK Colony, Hyderabad, Telangana, India', 2.7, 'Out for Delivery', 'VWX901234', '2024-04-24',3,9),
(9, 9, 'Daisy', '901 STU Colony, Mumbai, Maharashtra, India', 'Srinivasan', '819 RCB Road, Pune, Maharashtra, India', 2.1, 'Pending', 'YZA567890', '2024-04-23',2,12),
(10, 10, 'Tushar', '273 UVW Street, Kolkata, West Bengal, India', 'Lloyd George Xavier', '382 DC Road, Mumbai, Maharashtra, India', 1.6, 'Delivered', 'ZAB123456', '2024-04-24',2,8),
(11, 1, 'Adel Mariam', '123 ABC Nagar, Chennai, Tamil Nadu, India', 'Lydia Paul', '510 RR Road, Chennai, Tamil Nadu, India', 2.2, 'In Transit', 'CDE901234', '2024-04-24',1,11),
(12, 3, 'Hemmasri', '789 PQR Road, Kolkata, West Bengal, India', 'Aneecia Thomas', '729 GT Road, Kolkata, West Bengal, India', 1.8, 'In Transit', 'XYZ567890', '2024-04-26',2,7),
(13, 11, 'Antony Sujil', '456 XYZ Nagar, Bangalore, Karnataka, India', 'Lana Del Ray', '715 AM Street, Hyderabad, Telangana, India', 3.3, 'Delivered', 'TSJB297692', '2024-04-15',1,9),
(14, 12, 'Hiroshith', '752 ABC Road, Hyderabad, Telangana, India', 'Sharukh Khan', '917 HAG Colony, Mumbai, Maharashtra, India', 3.1, 'Delivered', 'JAB283929', '2024-04-09',3,8 ),
(15, 6, 'Minu Fathima', '890 GHI Nagar, Pune, Maharashtra, India', 'David John', '928 LAS Road, Chennai, Tamil Nadu, India', 2.9, 'Delivered', 'IAS280307', '2024-04-15',4,11),
(16, 6, 'Minu Fathima', '890 GHI Nagar, Pune, Maharashtra, India', 'Anna', '234 Mountain View Lane,Uttar Pradesh, India', 1.8,'Delivered','OWN019279', '2024-04-15',4,11),
(17, 13, 'Lewis', '573 HS Road, Lucknow, Uttar Pradesh, India', 'Anna', '234 Mountain View Lane,Uttar Pradesh, India', 1.8,'Delivered','OUD923279', '2024-04-15',4,11);

-- Retrieval of all records from the Courier table
SELECT * FROM Courier;

-- Updation of Status of a specific Courier record
UPDATE Courier SET Status = "Delivered" WHERE CourierID = 14;

-- Creation of the CourierServices table
CREATE TABLE CourierServices (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(100),
    Cost DECIMAL(8 , 2 )
); 

-- Insertion of data into the CourierServices table
INSERT INTO CourierServices (ServiceID, ServiceName, Cost) VALUES
(1, 'Standard', 20.00),
(2, 'Express', 35.50),
(3, 'Same-Day', 50.75),
(4, 'Overnight', 45.25),
(5, 'International', 100.75);

-- Retrieval of all records from the CourierServices table
SELECT * FROM CourierServices;

-- Creation of the Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    ContactNumber VARCHAR(20),
    Role VARCHAR(50),
    Salary DECIMAL(10 , 2 )
); 

-- Insertion of data into the Employee table
INSERT INTO Employee VALUES
(1, 'Harry Styles', 'harry@gmail.com', '123-456-7890', 'Manager', 50000.00),
(2, 'Taylor Swift', 'taylor@gmail.com', '987-654-3210', 'Sales Associate', 35000.00),
(3, 'John Legend', 'john.legend@gmail.com', '555-123-4567', 'Sales Associate', 35000.00),
(4, 'Louis Tomlinson', 'louis@gmail.com', '555-987-6543', 'Customer Service Representative', 30000.00),
(5, 'Zayn Malik', 'zayn@gmail.com', '888-555-4321', 'Customer Service Representative', 30000.00),
(6, 'Liam Payne', 'liam@gmail.com', '555-555-5555', 'Courier Agent', 32000.00),
(7, 'Niall Horan', 'niall@gmail.com', '555-123-1234', 'Courier Agent', 32000.00),
(8, 'Justin Beiber', 'justin@gmail.com', '555-303-0303', 'Courier Agent', 32000.00),
(9, 'Miley Cyrus', 'miley@gmail.com', '555-404-0404', 'Courier Agent', 32000.00),
(10, 'Ariana Grande', 'ariana@gmail.com', '555-505-0505', 'Courier Agent', 32000.00),
(11, 'John Mayer', 'mayer@gmail.com', '555-606-0606', 'Courier Agent', 32000.00),
(12, 'John Rai', 'rai@gmail.com', '555-707-0707', 'Courier Agent', 32000.00),
(13, 'Abraham John', 'abraham.john@gmail.com', '555-456-7890', 'Warehouse Associate', 28000.00),
(14, 'Mahendra Singh Dhoni', 'dhoni@gmail.com', '545-545-4444', 'Warehouse Associate', 20000.00),
(15, 'Virat Kohli', 'kohli@gmail.com', '555-666-6666', 'Warehouse Associate', 20000.00),
(16, 'Faf du Plessis', 'faf@gmail.com', '555-777-7777', 'Warehouse Associate', 20000.00);

-- Retrieval of all records from the Employee table
SELECT * FROM Employee;

-- Creation of the Location table
CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Address TEXT
); 

-- Insertion of data into the Location table
INSERT INTO Location VALUES
    (1, 'Chennai, Tamil Nadu', '383 CTN Street, Chennai, Tamil Nadu, India'),
    (2, 'Mumbai, Maharashtra', '537 MMM Road, Mumbai, Maharashtra, India'),
    (3, 'Kolkata, West Bengal', '246 KWB Avenue, Kolkata, West Bengal, India'),
    (4, 'Bangalore, Karnataka', '376 BKK Street, Bangalore, Karnataka, India'),
    (5, 'Hyderabad, Telangana', '873 HTT Lane, Hyderabad, Telangana, India'),
    (6, 'Pune, Maharashtra', '209 PMM Boulevard, Pune, Maharashtra, India'),
    (7, 'Delhi, Delhi', '2567 DDD Circle, Delhi, Delhi, India'),
    (8,'Lucknow, Uttar Pradesh', '789 Sunrise Road, Lucknow, Uttar Pradesh, India');
    
-- Retrieval of all records from the Location table
SELECT * FROM Location;

-- Counting the total number of rows in the Location table
SELECT COUNT(*) AS TotalRows FROM Location;

-- Creation of the Payment table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    CourierID INT,
    LocationId INT,
    Amount DECIMAL(10 , 2 ),
    PaymentDate DATE,
    FOREIGN KEY (CourierID)
        REFERENCES Courier (CourierID),
    FOREIGN KEY (LocationID)
        REFERENCES Location (LocationID)
);

-- Insertion of data into the Payment table
INSERT INTO Payment VALUES
(1,1,1,30.00,'2024-04-10'),
(2,2,2,101.50,'2024-04-16'),
(3,3,3,126.70,'2024-04-15'),
(4,4,4,60.90,'2024-04-15'),
(5,5,5,130.00,'2024-04-17'),
(6,6,1,46.00,'2024-04-14'),
(7,7,7,70.00,'2024-04-20'),
(8,8,1,140.00,'2024-04-24'),
(9,9,2,74.55,'2024-04-22'),
(10,10,3,56.80,'2024-04-22'),
(11,11,1,44.00,'2024-04-19'),
(12,12,3,70.00,'2024-04-25'),
(13,13,4,66.00,'2024-04-10'),
(14,14,5,141.00,'2024-04-09'),
(15,15,6,131.23,'2024-04-14'),
(16,16,6,82,'2024-04-14'),
(17,17,8,82,'2024-04-13');

-- Retrieval of all records from the Payment table
SELECT * FROM Payment;  

show tables;

-- 1. List all customers: 
SELECT DISTINCT
    SenderName AS CUSTOMERS
FROM
    courier;

-- 2. List all orders for a specific customer:
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    c.SenderName = 'Adel Mariam';

-- 3. List all couriers:
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        JOIN
    payment p ON c.CourierID = p.CourierID;

-- 4. List all packages for a specific order:
SELECT 
    c.CourierID,
    c.CustomerID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    c.CustomerID = 1;

-- 5. List all deliveries for a specific courier:
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.Cost AS CostPerKg,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    cs.ServiceID = 3;

-- 6. List all undelivered packages: 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    c.Status != 'Delivered';

-- 7. List all packages that are scheduled for delivery today: 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    c.DeliveryDate = '2024-04-24';

-- 8. List all packages with a specific status: 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    c.Status = 'pending';

-- 9. Calculate the total number of packages for each courier
SELECT 
    cs.ServiceName, COUNT(c.ServiceID) AS TotalPackages
FROM
    CourierServices cs
LEFT JOIN
    courier c ON c.ServiceID = cs.ServiceID
GROUP BY
    cs.ServiceID, cs.ServiceName;


-- 10. Find the average delivery time for each courier 
SELECT 
    c.CourierID,
    ROUND(DATEDIFF(c.DeliveryDate, p.PaymentDate)) AS AvgDeliveryTime
FROM
    courier c
        JOIN
    payment p ON c.CourierID = p.CourierID;
--  average delivery time for each courier service
SELECT 
    cs.ServiceName,
    ROUND(AVG(DATEDIFF(c.DeliveryDate, p.PaymentDate))) AS AvgDeliveryTime
FROM
    courier c
        JOIN
    courierservices cs ON cs.ServiceID = c.ServiceID
        JOIN
    payment p ON p.CourierID = c.CourierID
GROUP BY cs.ServiceID;

-- 11. List all packages with a specific weight range: 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    c.Weight BETWEEN 2 AND 3;
-- Noumber of packages with a specific weight range: 
SELECT 
    COUNT(*)
FROM
    courier
WHERE
    Weight BETWEEN 2 AND 3;
    
-- 12. Retrieve employees whose names contain 'John'
SELECT 
    Name
FROM
    employee
WHERE
    Name LIKE '%john%';
    
-- 13. Retrieve all courier records with payments greater than $50. 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    Courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    Employee e ON c.CourierID = e.EmployeeID
        JOIN
    payment p ON c.courierID = p.courierID
WHERE
    p.Amount > 50;

-- 14. Find the total number of couriers handled by each employee.
SELECT 
    e.Name, COUNT(*) AS NumberOfCouriers
FROM
    employee e
        JOIN
    courier c ON c.EmployeeID = e.EmployeeID
GROUP BY c.EmployeeID;  

-- 15. Calculate the total revenue generated by each location 
SELECT 
    l.LocationName, SUM(p.Amount) AS TotalRevenue
FROM
    location l
        JOIN
    payment p
ON
    p.LocationID = l.LocationID
GROUP BY l.LocationID;

-- 16. Find the total number of couriers delivered to each location. 
SELECT 
    l.LocationName, COUNT(*) AS NumberOfCouriers
FROM
    Courier c
        JOIN
    Location l ON c.ReceiverAddress LIKE CONCAT('%', l.LocationName, '%')
GROUP BY l.LocationName;

-- 17. Find the courier with the highest average delivery time: 
SELECT 
    c.CourierID,
    ROUND(DATEDIFF(c.DeliveryDate, p.PaymentDate)) AS AvgDeliveryTime
FROM
    Courier c
        JOIN
    Payment p ON c.CourierID = p.CourierID
ORDER BY AvgDeliveryTime DESC
LIMIT 1;
-- courier service with the highest average delivery time: 
SELECT 
    cs.ServiceName,
    ROUND(AVG(DATEDIFF(c.DeliveryDate, p.PaymentDate))) AS AvgDeliveryTime
FROM
    courier c
        JOIN
    courierservices cs ON cs.ServiceID = c.ServiceID
        JOIN
    payment p ON p.CourierID = c.CourierID
GROUP BY cs.ServiceID
ORDER BY AvgDeliveryTime DESC
LIMIT 1;

-- 18. Find Locations with Total Payments Less Than a Certain Amount
SELECT 
    l.LocationName, SUM(p.Amount) AS sum
FROM
    location l
        JOIN
    payment p ON p.LocationID = l.LocationID
GROUP BY l.LocationID
HAVING sum < 150;

-- 19. Calculate Total Payments per Location 
select l.LocationName , count(*) as TotalPayments
from location l
join payment p on p.LocationID = l.LocationID
group by l.LocationName;

-- 20. Retrieve couriers who have received payments totaling more than $60 in a specific location (LocationID = X):
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    p.Amount AS TotalPaid
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    payment p ON c.CourierID = p.CourierID
        JOIN
    location l ON c.SenderAddress LIKE CONCAT('%', l.LocationName, '%')
WHERE
    p.Amount > 60
        AND l.locationName = 'hyderabad, telangana';

-- 21. Retrieve couriers who have received payments totaling more than $60 after a certain date (PaymentDate > 'YYYY-MM-DD'): 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    p.Amount AS TotalPaid  
FROM
    courier c
        JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
     p.Amount > 60 AND p.PaymentDate > '2024-04-20';
     
-- 22. Retrieve locations where the total amount received is more than $5000 before a certain date(PaymentDate > 'YYYY-MM-DD') 
SELECT 
    l.LocationID,
    l.LocationName,
    SUM(p.Amount) AS TotalAmountReceived
FROM
    location l
        JOIN
    courier c ON c.ReceiverAddress LIKE CONCAT('%', l.LocationName, '%')
        JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    p.PaymentDate > '2024-04-20'
GROUP BY
    l.LocationID
HAVING
    SUM(p.Amount) > 100;

-- 23. Retrieve Payments with Courier Information 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    p.Amount AS TotalPaid,
    p.PaymentDate
FROM
    payment p
        INNER JOIN
    courier c ON p.CourierID = c.CourierID;
    
-- 24. Retrieve Payments with Location Information 
SELECT 
    p.PaymentID,
    p.CourierID,
    l.LocationName,
    l.Address AS StateOfficeAddress,
    p.Amount,
    p.PaymentDate
FROM
    payment p
        JOIN
    location l ON p.LocationID = l.LocationID
ORDER BY PaymentDate ASC;

-- 25. Retrieve Payments with Courier and Location Information 
   SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    p.Amount AS TotalPaid,
    p.PaymentDate,
    l.LocationName,
    l.Address AS StateOfficeAddress
FROM
    Payment p
        INNER JOIN
    Courier c ON p.CourierID = c.CourierID
        INNER JOIN
    Location l ON p.LocationID = l.LocationID;
    
-- 26. List all payments with courier details 
SELECT 
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    p.PaymentID,
    p.Amount AS TotalPaid,
    p.PaymentDate
FROM
    payment p
        INNER JOIN
    courier c ON p.CourierID = c.CourierID;

-- 27. Total payments received for each courier
SELECT 
    c.CourierID,
    c.SenderName,
    SUM(p.Amount) AS TotalPaymentsReceived
FROM
    courier c
        LEFT JOIN
    payment p ON c.CourierID = p.CourierID
GROUP BY c.CourierID;

-- 28. List payments made on a specific date 
SELECT 
    c.CourierID,
    c.SenderName,
    p.PaymentID,
    p.Amount,
    p.PaymentDate
FROM
    Courier c
        INNER JOIN
    payment p ON c.CourierID = p.CourierID
WHERE
    p.PaymentDate = '2024-04-15';

-- 29. Get Courier Information for Each Payment 
SELECT 
    p.PaymentID,
    c.CourierID,
    c.SenderName AS Customer,
    c.SenderAddress AS CustomerAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid,
    p.PaymentDate
FROM
    courier c
        INNER JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        INNER JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        INNER JOIN
    payment p ON c.CourierID = p.CourierID;
    
-- 30. Get Payment Details with Location 
SELECT 
    p.PaymentID,
    p.CourierID,
    l.LocationName,
    l.Address AS StateOfficeAddress,
    p.Amount,
    p.PaymentDate
FROM
    payment p
        INNER JOIN
    location l ON p.LocationID = l.LocationID
ORDER BY PaymentDate ASC;

-- 31. Calculating Total Payments for Each Courier 
SELECT 
    c.CourierID, c.SenderName, SUM(p.Amount) as TotalPayments
FROM
    courier c
        LEFT JOIN
    payment p ON p.CourierID = c.CourierID
GROUP BY c.CourierID;

-- 32. List Payments Within a Date Range
SELECT 
    p.PaymentID,
    p.CourierID,
    c.SenderName,
    l.LocationName,
    l.Address AS StateOfficeAddress,
    p.Amount,
    p.PaymentDate
FROM
    payment p
        INNER JOIN
    location l ON p.LocationID = l.LocationID
        INNER JOIN
    courier c ON p.CourierID = c.CourierID
WHERE
    p.PaymentDate BETWEEN '2024-04-20' AND '2024-04-24'
ORDER BY p.PaymentDate ASC;

-- 33. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side 
SELECT 
    u.UserID,
    u.Name,
    c.CourierID,
    c.SenderAddress AS UserAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    user u
        LEFT JOIN
    courier c ON u.UserID = c.CustomerID
        LEFT JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        LEFT JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        LEFT JOIN
    payment p ON c.CourierID = p.CourierID

UNION

SELECT 
    u.UserID,
    u.Name,
    c.CourierID,
    c.SenderAddress AS UserAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceName,
    e.Name AS EmployeeName,
    p.Amount AS TotalPaid
FROM
    courier c
        RIGHT JOIN
    user u ON u.UserID = c.CustomerID
        RIGHT JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID
        RIGHT JOIN
    employee e ON c.EmployeeID = e.EmployeeID
        RIGHT JOIN
    payment p ON c.CourierID = p.CourierID;

    
-- 34. Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side
SELECT 
    c.CourierID,
    c.SenderName AS CustomerName,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceID,
    cs.ServiceName
FROM
    courier c
        LEFT JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID 
UNION SELECT 
    c.CourierID,
    c.SenderName AS CustomerName,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceID,
    cs.ServiceName
FROM
    courier c
        RIGHT JOIN
    courierservices cs ON c.ServiceID = cs.ServiceID;

-- 35. Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side 
SELECT 
    e.EmployeeID,
    e.Name AS EmployeeName,
    p.PaymentID,
    p.Amount AS PaymentAmount
FROM
    Employee e
        LEFT JOIN
    Courier c ON e.EmployeeID = c.EmployeeID
        LEFT JOIN
    Payment p ON c.CourierID = p.CourierID 
UNION SELECT 
    e.EmployeeID,
    e.Name AS EmployeeName,
    p.PaymentID,
    p.Amount AS PaymentAmount
FROM
    Payment p
        RIGHT JOIN
    Courier c ON p.CourierID = c.CourierID
        RIGHT JOIN
    Employee e ON e.EmployeeID = c.EmployeeID;
    
-- 36. List all users and all courier services, showing all possible combinations. 
SELECT 
    u.UserID,
    u.Name AS UserName,
    u.Email AS UserEmail,
    cs.ServiceID,
    cs.ServiceName,
    cs.Cost
FROM
    user u
CROSS JOIN
    CourierServices cs;
    
-- 37. List all employees and all locations, showing all possible combinations: 
SELECT 
    *
FROM
    employee e
        CROSS JOIN
    location l;

-- 38. Retrieve a list of couriers and their corresponding sender information (if available)
SELECT
    c.CourierID,
    u.Name AS SenderName,
    u.Email AS SenderEmail,
    u.ContactNumber AS SenderContactNumber,
    u.Address AS SenderAddress
FROM
    Courier c
LEFT JOIN
    User u ON c.CustomerID = u.UserID;

-- 39. Retrieve a list of couriers and their corresponding receiver information (if available): 
SELECT
    c.CourierID,
    c.ReceiverName,
    c.ReceiverAddress
FROM 
    courier c;
    -- OR
SELECT
    c1.CourierID,
    c1.ReceiverName,
    c1.ReceiverAddress
FROM 
    Courier c1
LEFT JOIN
    Courier c2 ON c1.CourierID = c2.CourierID
WHERE
    c1.ReceiverName IS NOT NULL;

-- 40. Retrieve a list of couriers along with the courier service details (if available): 
SELECT 
    c.CourierID,
    c.SenderName,
    c.SenderAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate,
    cs.ServiceID,
    cs.ServiceName,
    cs.Cost,
    p.Amount AS TotalCost
FROM
    Courier c
        INNER JOIN
    CourierServices cs ON c.ServiceID = cs.ServiceID
        INNER JOIN
    payment AS p ON c.CourierID = p.PaymentID;
    
-- 41. Retrieve a list of employees and the number of couriers assigned to each employee: 
SELECT 
    e.EmployeeID, e.Name, COUNT(*) AS NumberOfCouriers
FROM
    Courier c
        INNER JOIN
    employee e ON c.EmployeeID = e.EmployeeID
GROUP BY c.EmployeeID;

-- 42. Retrieve a list of locations and the total payment amount received at each location: 
SELECT 
    l.LocationName, SUM(p.Amount) AS TotalPaymentAmount
FROM
    location l
        INNER JOIN
    payment p ON p.LocationID = l.LocationID
GROUP BY l.LocationID;

-- 43. Retrieve all couriers sent by the same sender (based on SenderName). 
SELECT 
    *
FROM
    Courier
WHERE
    SenderName IN (SELECT 
            SenderName
        FROM
            Courier
        GROUP BY SenderName
        HAVING COUNT(*) > 1)
ORDER BY CustomerID ASC;

 -- or

SELECT DISTINCT
    c1.*
FROM
    Courier c1
        JOIN
    Courier c2 ON c1.SenderName = c2.SenderName
WHERE
    c1.CourierID != c2.CourierID
ORDER BY c1.CustomerID ASC;

-- 44. List all employees who share the same role. 
SELECT DISTINCT
    e1.Name, e1.Role
FROM
    employee e1
        JOIN
    employee e2 ON e2.Role = e1.Role
WHERE
    e1.EmployeeID != e2.EmployeeID;

-- 45. Retrieve all payments made for couriers sent from the same location. 
SELECT 
    p.CourierID, p.Amount, p.PaymentDate, l.LocationName
FROM
    payment p
        INNER JOIN
    location l ON p.LocationID = l.LocationID
WHERE
    p.LocationID IN (SELECT 
            p.LocationID
        FROM
            payment p
        GROUP BY p.LocationID
        HAVING COUNT(*) > 1);

-- 46. Retrieve all couriers sent from the same location (based on SenderAddress). 
SELECT 
    p.CourierID,
    c.SenderAddress,
    p.Amount,
    p.PaymentDate
FROM
    Payment p
JOIN 
    Courier c ON p.CourierID = c.CourierID
JOIN 
    Location l ON c.SenderAddress LIKE CONCAT('%', l.LocationName, '%')
WHERE 
    l.LocationName IN (
        SELECT 
            l.LocationName
        FROM  
            Courier c
        JOIN 
            Location l ON c.SenderAddress LIKE CONCAT('%', l.LocationName, '%')
        GROUP BY 
            l.LocationName
        HAVING 
            COUNT(*) > 1
    ) ORDER BY l.LocationName ASC;

-- 47. List employees and the number of couriers they have delivered: 
SELECT 
    E.EmployeeID,e.Name, COUNT(*) AS NumberOfCouriers
FROM
    employee e
        JOIN
    courier c ON c.EmployeeID = e.EmployeeID
GROUP BY c.EmployeeID;  

-- 48. Find couriers that were paid an amount greater than the cost of their respective courier services 
SELECT 
    c.CourierID,
    c.ServiceID,
    cs.Cost AS ServiceCostPerKg,
    cs.Cost * c.Weight AS ActualAmount,
    p.Amount AS AmountPaid
FROM
    courier c
    INNER JOIN courierservices cs ON c.ServiceID = cs.ServiceID
    INNER JOIN payment p ON c.CourierID = p.CourierID
WHERE
    p.Amount > (cs.Cost * c.Weight);
    
-- 49. Find couriers that have a weight greater than the average weight of all couriers 
SELECT 
    CourierID,
    Weight,
    ROUND((SELECT AVG(Weight) FROM courier),2) AS AverageWeight
FROM
    courier
WHERE
    Weight > (SELECT AVG(Weight) FROM courier);

-- 50. Find the names of all employees who have a salary greater than the average salary: 
SELECT 
    Name,
    Salary,
    (SELECT ROUND(AVG(Salary)) FROM employee) AS AverageSalary
FROM 
    employee
WHERE 
    Salary > (SELECT AVG(Salary) FROM employee);
    
-- 51. Find the total cost of all courier services where the cost is less than the maximum cost 
SELECT 
    SUM(Cost) AS TotalCost
FROM 
    CourierServices
WHERE 
    Cost < (SELECT MAX(Cost) FROM CourierServices);
    
-- 52. Find all couriers that have been paid for 
SELECT DISTINCT CourierID
FROM payment;

-- OR

SELECT *
FROM courier c
WHERE EXISTS (
    SELECT 1
    FROM payment p
    WHERE p.CourierID = c.CourierID
);

-- 53. Find the locations where the maximum payment amount was made 
SELECT 
    l.LocationID, l.LocationName, l.Address, p.Amount
FROM
    location l
        JOIN
    payment p ON p.LocationID = l.LocationID
WHERE
    p.Amount = (SELECT 
            MAX(Amount)
        FROM
            payment);
            
-- 54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender (e.g., 'SenderName'): 
SELECT CourierID, Weight,
       (SELECT SUM(Weight) 
        FROM courier 
        WHERE SenderName = 'akash') AS TotalWeightBySender
FROM courier
WHERE Weight > (
    SELECT SUM(Weight)
    FROM courier
    WHERE SenderName = 'akash'
);















