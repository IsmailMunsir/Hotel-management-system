Create Database Travel_Classics;

USE Travel_Classics;

------Account-------
Create table Account(
U_ID INT PRIMARY KEY,
Username VARCHAR (50),
U_Password VARCHAR (50),
Login_Time TIME,
Login_Date DATE,
)

SELECT*FROM Account;

INSERT INTO  Account(U_ID,Username,U_Password,Login_Time,Login_Date)
VALUES
	(001, 'john_doe', 'password123', '09:00:00', '2024-04-01'),
	(002, 'jane_smith', 'letmein', '10:30:00', '2024-04-02'),
	(003, 'alex_brown', 'securepass', '11:45:00', '2024-04-03'),
	(004, 'emily_jones', 'qwerty', '13:15:00', '2024-04-04'),
	(005, 'mike_wilson', 'p@ssw0rd', '14:30:00', '2024-04-05'),
	(006, 'sarah_adams', '123456', '15:45:00', '2024-04-06'),
	(007, 'david_clark', 'password123', '17:00:00', '2024-04-07'),
	(008, 'lisa_taylor', 'letmein', '09:30:00', '2024-04-08'),
	(009, 'ryan_hall', 'securepass', '10:45:00', '2024-04-09'),
	(010, 'jessica_lee', 'qwerty', '12:00:00', '2024-04-10'),
	(011, 'matthew_evans', 'p@ssw0rd', '13:30:00', '2024-04-11'),
	(012, 'amanda_king', '123456', '15:00:00', '2024-04-12'),
	(013, 'kevin_scott', 'password123', '16:15:00', '2024-04-13'),
	(014, 'natalie_wright', 'letmein', '17:45:00', '2024-04-14'),
	(015, 'daniel_carter', 'securepass', '09:45:00', '2024-04-15');

----------Traveler-------

Create table Traveler
(
Traveler_ID int primary key,
Registration_no VARCHAR(10),
U_ID int,
Fast_Name VARCHAR(200),
Last_Name VARCHAR(200),
Address VARCHAR (500),
Contact_no VARCHAR(15),
Email VARCHAR (200),
Country VARCHAR(100),
City VARCHAR(100),
FOREIGN KEY(U_ID)REFERENCES Account(U_ID),
)
SELECT*FROM Traveler;

INSERT INTO Traveler(Traveler_ID,Registration_no,U_ID,Fast_Name,Last_Name,Address,Contact_no,Email,Country,City)
VALUES
	(1, 'REG001','0001', 'John', 'Doe', '123 Main St', '+1234567890', 'john.doe@example.com', 'USA', 'New York'),
	(2, 'REG002','0002','Jane', 'Smith', '456 Elm St', '+1987654321', 'jane.smith@example.com', 'Canada', 'Toronto'),
	(3, 'REG003','0003', 'Alex', 'Brown', '789 Oak St', '+1122334455', 'alex.brown@example.com', 'UK', 'London'),
	(4, 'REG004','0004', 'Emily', 'Johnson', '321 Pine St', '+4455667788', 'emily.johnson@example.com', 'Australia', 'Sydney'),
	(5, 'REG005','0005', 'Mike', 'Wilson', '654 Maple St', '+9988776655', 'mike.wilson@example.com', 'Germany', 'Berlin'),
	(6, 'REG006','0006', 'Sarah', 'Adams', '987 Birch St', '+1122334455', 'sarah.adams@example.com', 'France', 'Paris'),
	(7, 'REG007','0007', 'David', 'Clark', '234 Cedar St', '+3322114455', 'david.clark@example.com', 'Japan', 'Tokyo'),
	(8, 'REG008','0008', 'Lisa', 'Taylor', '567 Ash St', '+5544332211', 'lisa.taylor@example.com', 'Brazil', 'Rio de Janeiro'),
	(9, 'REG009','0009', 'Ryan', 'Hall', '890 Walnut St', '+7788990011', 'ryan.hall@example.com', 'India', 'Mumbai'),
	(10, 'REG010','0010', 'Jessica', 'Lee', '432 Fir St', '+1122334455', 'jessica.lee@example.com', 'China', 'Beijing'),
	(11, 'REG011','0011', 'Matthew', 'Evans', '765 Spruce St', '+1122334455', 'matthew.evans@example.com', 'South Africa', 'Johannesburg'),
	(12, 'REG012','0012', 'Amanda', 'King', '109 Poplar St', '+1122334455', 'amanda.king@example.com', 'Mexico', 'Mexico City'),
	(13, 'REG013','0013', 'Kevin', 'Scott', '876 Pineapple St', '+1122334455', 'kevin.scott@example.com', 'Spain', 'Madrid'),
	(14, 'REG014','0014', 'Natalie', 'Wright', '210 Orange St', '+1122334455', 'natalie.wright@example.com', 'Italy', 'Rome'),
	(15, 'REG015','0015', 'Daniel', 'Carter', '543 Banana St', '+1122334455', 'daniel.carter@example.com', 'Russia', 'Moscow');

----------Travel_Report-------------
Create table Travel_Report
(
Repor_ID int Primary key,
Traveler_ID int, 
Title VARCHAR (100),
Description VArchar(500),
Country VARCHAR (50),
City VARCHAR (100),
Location VARCHAR (100),
FOREIGN KEY (Traveler_ID) REFERENCES Traveler(Traveler_ID),
)

SELECT*FROM Travel_Report;

INSERT INTO Travel_Report(Repor_ID,Traveler_ID,Title,Description,Country,City,Location)
VALUES
	(1,'0001', 'Exploring Ancient Ruins', 'Visited ancient ruins and documented historical artifacts.', 'Greece', 'Athens', 'Acropolis'),
	(2,'0002', 'Beach Paradise Getaway', 'Relaxed on pristine beaches and enjoyed water activities.', 'Maldives', 'Male', 'Hulhumale'),
	(3,'0003', 'Cultural Immersion Experience', 'Immersed in local culture, cuisine, and traditions.', 'Japan', 'Kyoto', 'Kiyomizu-dera Temple'),
	(4,'0004', 'Adventure in the Jungle', 'Explored dense jungles and encountered diverse wildlife.', 'Costa Rica', 'San Jose', 'Manuel Antonio National Park'),
	(5,'0005', 'Urban Exploration Tour', 'Discovered hidden gems and vibrant street art in the city.', 'Germany', 'Berlin', 'East Side Gallery'),
	(6,'0006', 'Safari Expedition', 'Encountered the "Big Five" and witnessed stunning landscapes.', 'South Africa', 'Kruger National Park', 'Sabi Sands Game Reserve'),
	(7,'0007', 'Mountain Trekking Adventure', 'Conquered challenging trails and enjoyed panoramic views.', 'Nepal', 'Kathmandu', 'Everest Base Camp'),
	(8,'0008', 'Historical Landmarks Tour', 'Explored iconic landmarks and learned about ancient history.', 'Italy', 'Rome', 'Colosseum'),
	(9,'0009', 'Tropical Island Retreat', 'Relaxed in luxury resorts and indulged in spa treatments.', 'Fiji', 'Nadi', 'Denarau Island'),
	(10,'0010', 'Culinary Tour of France', 'Indulged in gourmet cuisine and fine wines in picturesque towns.', 'France', 'Paris', 'Montmartre'),
	(11,'0011', 'Desert Safari Experience', 'Ventured into vast deserts and enjoyed thrilling dune bashing.', 'United Arab Emirates', 'Dubai', 'Dubai Desert Conservation Reserve'),
	(12,'0012', 'Historic City Walk', 'Strolled through cobblestone streets and admired medieval architecture.', 'Czech Republic', 'Prague', 'Old Town Square'),
	(13,'0013', 'Scenic Coastal Drive', 'Took a leisurely drive along breathtaking coastal cliffs and scenic vistas.', 'Australia', 'Sydney', 'Great Ocean Road'),
	(14,'0014', 'Island Hopping Adventure', 'Explored multiple islands and discovered secluded beaches.', 'Philippines', 'Palawan', 'El Nido'),
	(15,'0015', 'Winter Wonderland Experience', 'Enjoyed skiing, snowboarding, and cozy evenings by the fireplace.', 'Canada', 'Banff', 'Lake Louise');

----------------Hotel-------------
CREATE TABLE Hotel(
	HotelID int PRIMARY KEY,
	HotelName NVARCHAR(50),
	ADDRESS NVARCHAR (100),
	Country NVARCHAR (50),
	City NVARCHAR (50),
	Street NVARCHAR (50),
	Website NVARCHAR (100),
	Email NVARCHAR (100),
	Reveiw NVARCHAR (500),
	Rating VARCHAR (50),
	Regitration DATE,
	)

SELECT*FROM Hotel;


INSERT INTO Hotel (HotelID,HotelName,Address,Country, City, Street,Website,Email,Reveiw,Rating,Regitration)VALUES 
(001, 'Seaside Palace Hotel', '123 Coastal Avenue', 'Atlantis', 'Seaside City', 'Coastal Boulevard', 'Excellent', 'http://www.seasidepalacehotel.com', 'seasidepalace@gmail.com','4.2', '2023-04-15'),
(002, 'Mountain Lodge Retreat', '456 Hilltop Road', 'El Dorado', 'Mountain Town', 'Highland Street', 'Superb', 'http://www.mountainlodgeretreat.com', 'mountainlodge@gmail.com', '4.5','2023-05-20'),
(003, 'Sunset Vista Resort', '789 Sunset Drive', 'Shangri-La', 'Sunset Beach', 'Sunset Boulevard', 'Outstanding', 'http://www.sunsetvistaresort.com', 'sunsetvistaresort@gmail.com','4.7', '2023-06-10'),
(004, 'Metropolis Hotel', '321 Urban Avenue', 'Valhalla', 'Metropolis City', 'Downtown Street', 'Great', 'http://www.metropolishotel.com', 'metropolishotel@gmail.com', '4.1','2023-07-05'),
(005, 'Green Valley Inn', '234 Forest Lane', 'Avalon', 'Green Valley Town', 'Woodland Road', 'Fantastic', 'http://www.greenvalleyinn.com', 'greenvalleyinn@gmail.com', '4.8','2023-08-12'),
(006, 'Tropical Oasis Resort', '567 Palm Grove', 'Olympus', 'Tropical City', 'Palm Tree Avenue', 'Amazing', 'http://www.tropicaloasisresort.com', 'tropicaloasis@gmail.com','4.6', '2023-09-28'),
(007, 'Heritage Boutique Hotel', '890 Heritage Road', 'Narnia', 'Heritage Town', 'Historic Street', 'Splendid', 'http://www.heritageboutiquehotel.com', 'heritagehotel@gmail.com','4.9', '2023-10-15'),
(008, 'Skyline Suites', '432 Skyline Avenue', 'Camelot', 'Skyline City', 'Skyscraper Street', 'Stunning', 'http://www.skylinesuites.com', 'skylinesuites@gmail.com', '4.4','2023-11-20'),
(009, 'Riverside Retreat', '765 Riverbank Road', 'Shire', 'Riverside Village', 'Riverfront Lane', 'Breathtaking', 'http://www.riversideretreat.com', 'riversideretreat@gmail.com', '4.3','2023-12-03'),
(010, 'Sunrise Beach Resort', '678 Sunrise Boulevard', 'Elysium', 'Sunrise Bay', 'Beachfront Road', 'Magnificent', 'http://www.sunrisebeachresort.com', 'sunrisebeach@gmail.com','4.5', '2024-01-07'),
(011, 'Golden Sands Hotel', '987 Golden Avenue', 'Asgard', 'Golden Beach', 'Golden Sands Road', 'Fabulous', 'http://www.goldensandshotel.com', 'goldensandshotel@gmail.com', '4.7','2024-02-14'),
(012, 'Tranquil Haven Lodge', '210 Serene Lane', 'Asgard', 'Tranquil Village', 'Tranquility Street', 'Serene', 'http://www.tranquilhavenlodge.com', 'tranquilhaven@gmail.com', '4.5','2024-03-19'),
(013, 'Paradise Heights Resort', '543 Mountainview Drive', 'Olympus', 'Paradise City', 'Heavenly Road', 'Paradise', 'http://www.paradiseheightsresort.com', 'paradiseheights@gmail.com','4.2', '2024-04-25'),
(014, 'Urban Oasis Hotel', '876 Downtown Avenue', 'Atlantis', 'Urban City', 'Downtown Street', 'Urban', 'http://www.urbanoasishotel.com', 'urbanoasishotel@gmail.com','4.2', '2024-05-30'),
(015, 'Harbor View Hotel', '109 Portside Lane', 'Shangri-La', 'Harbor Town', 'Portside Road', 'Harbor', 'http://www.harborviewhotel.com', 'harborviewhotel@gmail.com', '4.9','2024-06-08');


------------Hotel_Account-------------
CREATE TABLE Hotel_Account
(
U_ID INT,
HotelID int,
FOREIGN KEY (U_ID) REFERENCES Account(U_ID),
FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
)

SELECT*FROM Hotel_Account;



INSERT INTO Hotel_Account(U_ID, HotelID) 
VALUES
('001', '001'),
('002', '002'),
('003', '003'),
('004', '004'),
('005', '005'),
('006', '006'),
('007', '007'),
('008', '008'),
('009', '009'),
('010', '010'),
('011', '011'),
('012', '012'),
('013', '013'),
('014', '014'),
('015', '015');

------Facility----------
Create Table Facility
(
Facility_ID int Primary key,
Name VARCHAR (200)
)
SELECT*FROM Facility;

INSERT INTO Facility(Facility_ID,Name)
VALUES
	(1, 'Swimming Pool'),
	(2, 'Gym'),
	(3, 'Spa'),
	(4, 'Restaurant'),
	(5, 'Bar'),
	(6, 'Conference Room'),
	(7, 'Business Center'),
	(8, 'Laundry Service'),
	(9, 'Parking'),
	(10, 'Airport Shuttle'),
	(11, 'Concierge'),
	(12, 'Room Service'),
	(13, 'Free Wi-Fi'),
	(14, 'Mini Bar'),
	(15, 'Fitness Classes');

----------Hotel_Facility--------------
CREATE TABLE Hotel_Facility
(
HotelID INT,
Facility_ID int,
FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
FOREIGN KEY (Facility_ID) REFERENCES Facility(Facility_ID),
)

SELECT*FROM Hotel_Facility;

INSERT INTO Hotel_Facility(HotelID, Facility_ID) 
VALUES
('001' , '1'),
('002' , '2'),
('003' , '3'),
('004' , '4'),
('005' , '5'),
('006' , '6'),
('007' , '7'),
('008' , '8'),
('009' , '9'),
('010' , '10'),
('011' , '11'),
('012' , '12'),
('013' , '13'),
('014' , '14'),
('015' , '15');


-----------Reservation-----------
Create Table Reservation
(
Reservation_ID int Primary key,
Traveler_ID int,
Reservation_date VARCHAR(50),
Number_of_gusets VARCHAR (100),
Payment VARCHAR (100),
Discount_Amount VARCHAR(50),
Check_in_date VARCHAR(50),
Check_out_date VARCHAR(50)
FOREIGN KEY(Traveler_ID)REFERENCES Traveler(Traveler_ID),

)

SELECT*FROM Reservation;

INSERT INTO Reservation(Reservation_ID, Traveler_ID, Number_of_gusets, Check_In_Date, Check_Out_Date, Payment, Discount_Amount, Reservation_Date) 

VALUES
(1,'1', '2024-04-01', 2, 200.00, 190,'2024-04-10', '2024-04-15'),
(2, '2','2024-04-02', 1, 100.00, 90,'2024-04-05', '2024-04-10'),
(3, '3','2024-04-03', 4, 500.00, 450,'2024-04-12', '2024-04-18'),
(4, '4','2024-04-04', 3, 300.00, 270,'2024-04-08', '2024-04-11'),
(5, '5','2024-04-05', 2, 250.00, 225,'2024-04-20', '2024-04-25'),
(6, '6','2024-04-06', 1, 700.00, 630,'2024-04-15', '2024-04-18'),
(7, '7','2024-04-07', 2, 300.00, 270,'2024-04-25', '2024-04-30'),
(8, '8','2024-04-08', 3, 900.00, 810,'2024-04-12', '2024-04-17'),
(9, '9','2024-04-09', 2, 220.00, 198,'2024-04-14', '2024-04-20'),
(10, '10','2024-04-10', 1, 1000.00, 900,'2024-04-18', '2024-04-21'),
(11, '11','2024-04-11', 4, 400.00, 360,'2024-04-16', '2024-04-22'),
(12,'12', '2024-04-12', 2, 250.00, 225,'2024-04-19', '2024-04-24'),
(13, '13','2024-04-13', 3, 300.00, 270,'2024-04-22', '2024-04-28'),
(14, '14','2024-04-14', 2, 230.00, 207,'2024-04-17', '2024-04-20'),
(15, '15','2024-04-15', 1, 900.00, 810,'2024-04-23', '2024-04-27');


-------------Transaction--------------
CREATE TABLE Transactions(
    Transaction_ID VARCHAR(10) PRIMARY KEY,
	Reservation_ID int,
    Total_Amount VARCHAR(100),
    Payment_Method VARCHAR(100),
    Transaction_Time VARCHAR(100),
    Transaction_Date VARCHAR(100),
	FOREIGN KEY (Reservation_ID) REFERENCES Reservation(Reservation_ID),
)

SELECT*FROM Transactions;

INSERT INTO Transactions (Transaction_ID,Reservation_ID, Total_Amount, Payment_Method, Transaction_Time, Transaction_Date)
VALUES
    ('TR001','1', '100.00', 'Credit Card', '08:30:00', '2024-04-08'),
    ('TR002','2', '150.00', 'PayPal', '09:15:00', '2024-04-08'),
    ('TR003','3', '200.00', 'Debit Card', '10:00:00', '2024-04-08'),
    ('TR004','4', '75.00', 'Cash', '10:45:00', '2024-04-08'),
    ('TR005','5', '120.00', 'Credit Card', '11:30:00', '2024-04-08'),
    ('TR006','6', '90.00', 'PayPal', '12:15:00', '2024-04-08'),
    ('TR007','7', '180.00', 'Debit Card', '13:00:00', '2024-04-08'),
    ('TR008','8', '95.00', 'Cash', '13:45:00', '2024-04-08'),
    ('TR009','9', '130.00', 'Credit Card', '14:30:00', '2024-04-08'),
    ('TR010','10', '85.00', 'PayPal', '15:15:00', '2024-04-08'),
    ('TR011','11', '110.00', 'Debit Card', '16:00:00', '2024-04-08'),
    ('TR012','12', '70.00', 'Cash', '16:45:00', '2024-04-08'),
    ('TR013','13', '140.00', 'Credit Card', '17:30:00', '2024-04-08'),
    ('TR014','14', '105.00', 'PayPal', '18:15:00', '2024-04-08'),
    ('TR015','15', '160.00', 'Debit Card', '19:00:00', '2024-04-08');

----------Accommodtation---------------

Create Table Accommodtation
(
Accommodation_ID int Primary key,
HotelID int,
Reservation_ID int,
Number_of_room VARCHAR(100),
Room_Type VARCHAR(100),
Description VARCHAR (200),
FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
FOREIGN KEY (Reservation_ID) REFERENCES Reservation(Reservation_ID),
)
SELECT*FROM Accommodtation;
INSERT INTO Accommodtation(Accommodation_ID,HotelID,Reservation_ID,Number_of_room,Room_Type,Description)
VALUES
	('001','001', '1','2', 'Double', 'Standard room with two beds'),
	('002','002','2', '1', 'Single', 'Basic single room with a single bed'),
	('003','003','3','3', 'Suite', 'Luxurious suite with additional amenities'),
	('004','004','4', '2', 'Double', 'Standard room with a double bed'),
	('005','005','5', '1', 'Single', 'Standard single room with a single bed'),
	('006','006','6', '2', 'Twin', 'Room with two separate beds'),
	('007','007','7', '3', 'Triple', 'Room suitable for three occupants'),
	('008','008','8', '1', 'Single', 'Single room with attached bathroom'),
	('009','009','9', '2', 'Double', 'Room with double bed and balcony view'),
	('010','010','10', '1', 'Single', 'Economy single room with basic amenities'),
	('011','011','11', '2', 'Double', 'Standard double room with ensuite bathroom'),
	('012','012','12', '1', 'Single', 'Cozy single room with city view'),
	('013','013','13', '3', 'Triple', 'Spacious room with three separate beds'),
	('014','014','14', '2', 'Double', 'Deluxe double room with modern decor'),
	('015','015','15', '1', 'Single', 'Executive single room with work desk');

------------Room--------------

CREATE TABLE Room
(
    Room_ID CHAR(50) PRIMARY KEY,
	Condition NVARCHAR(50),
	Price NVARCHAR(50),
)

SELECT * FROM Room;


INSERT INTO Room(Room_ID, Condition, Price)
VALUES
('Room001', 'Good', '100'),
('Room002', 'Excellent', '120'),
('Room003', 'Fair', '90'),
('Room004', 'Excellent', '150'),
('Room005', 'Good', '110'),
('Room006', 'Fair', '80'),
('Room007', 'Excellent', '170'),
('Room008', 'Good', '120'),
('Room009', 'Fair', '85'),
('Room010', 'Excellent', '160'),
('Room011', 'Good', '130'),
('Room012', 'Excellent', '180'),
('Room013', 'Fair', '95'),
('Room014', 'Excellent', '200'),
('Room015', 'Good', '140');

-------------------Accommodation_Room----------------
CREATE TABLE Accommodation_Room
(
Accommodation_ID int,
Room_ID CHAR(50),
FOREIGN KEY (Accommodation_ID) REFERENCES Accommodtation(Accommodation_ID),
FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID),
)

SELECT*FROM Accommodation_Room;


INSERT INTO Accommodation_Room(Accommodation_ID, Room_ID) 
VALUES
('001', 'Room001'),
('002', 'Room002'),
('003', 'Room003'),
('004', 'Room004'),
('005', 'Room005'),
('006', 'Room006'),
('007', 'Room007'),
('008', 'Room008'),
('009', 'Room009'),
('010', 'Room010'),
('011', 'Room011'),
('012', 'Room012'),
('013', 'Room013'),
('014', 'Room014'),
('015', 'Room015');

--------------------------------------List of Travelers of a particular location--------------------------------------
----------------------------------------------------------------------------------------------------------------------

SELECT Fast_Name,Last_Name,Country FROM Traveler;








-------------------Sum of transactions received with in a given duration of a particular hotel------------------------




SELECT h.HotelID, 
       h.HotelName, 
       r.Check_In_Date, 
       r.Check_Out_Date, 
       SUM(CAST(t.Total_Amount AS DECIMAL(10, 2))) AS Total_Transactions_Amount
FROM Transactions t
JOIN Reservation r ON t.Reservation_ID = r.Reservation_ID
JOIN Accommodtation a ON r.Reservation_ID = a.Reservation_ID
JOIN Hotel h ON a.HotelID = h.HotelID
GROUP BY h.HotelID, h.HotelName, r.Check_In_Date, r.Check_Out_Date;






-----------------------List of hotels and its room availability------------------------------




SELECT 
    Hotel.HotelID,
    Hotel.HotelName,
    Hotel.Address,
    Hotel.Country,
    Hotel.City,
    COUNT(Accommodation_Room.Room_ID) AS AvailableRooms
FROM 
    Hotel
LEFT JOIN Accommodtation ON Hotel.HotelID = Accommodtation.HotelID
LEFT JOIN Accommodation_Room ON Accommodtation.Accommodation_ID = Accommodation_Room.Accommodation_ID
GROUP BY 
    Hotel.HotelID,
    Hotel.HotelName,
    Hotel.Address,
    Hotel.Country,
    Hotel.City;

-------------- Test Case 01 ----------
SELECT *
FROM Traveler T
JOIN Reservation R ON T.Traveler_ID = R.Traveler_ID
JOIN Accommodtation A ON R.Reservation_ID = A.Reservation_ID
WHERE T.Traveler_ID = '005';

-------------- Test Case 02 ----------

SELECT*FROM Facility;

-------------- Test Case 03 ----------

SELECT*
FROM Hotel H
JOIN Accommodtation A ON H.HotelID = A.HotelID
WHERE H.HotelID = '005';

-------------- Test Case 04 ----------
UPDATE Travel_Report
SET Description = 'Updated Description'
WHERE Repor_ID = 3;

-------------- Test Case 05 ----------
SELECT *
FROM Reservation
WHERE Reservation_date = '2024-04-01';

-------------- Test Case 06 ----------
DELETE FROM Accommodtation
WHERE Accommodation_ID = '001';


-------------- Test Case 07 ----------
SELECT 
    R.Reservation_ID, 
    SUM(T.Total_Amount) AS Payment,
    R.Discount_Amount AS Discount_Amount,
    SUM(T.Total_Amount - R.Discount_Amount) AS Total_Payment
FROM Reservation R
JOIN Transactions T ON R.Reservation_ID = T.Reservation_ID
WHERE R.Reservation_ID = '001' -- Specify the desired Reservation_ID here
GROUP BY R.Reservation_ID, R.Discount_Amount;



-------------- Test Case 08 ----------
SELECT *
FROM Hotel
WHERE Rating >'4';

-------------- Test Case 09 ----------
SELECT T.*, A.Username, A.U_Password
FROM Traveler T
JOIN Account A ON T.U_ID = A.U_ID;


-------------- Test Case 10 ----------

SELECT F.*
FROM Facility F
INNER JOIN Hotel_Facility HF ON F.Facility_ID = HF.Facility_ID
WHERE HF.HotelID = '003'; -- Replace '003' with the specific hotel ID you're interested in


-------------- Test Case 11 ----------
INSERT INTO Facility(Facility_ID,Name) 
VALUES
('016', 'Business Lounge');