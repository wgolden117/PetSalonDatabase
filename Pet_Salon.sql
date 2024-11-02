CREATE DATABASE petSalon;

use petSalon;

CREATE TABLE EMPLOYEE (
    SSN VARCHAR(15) PRIMARY KEY,
    Number VARCHAR(10),
    Street VARCHAR(50),
    Apartment_number VARCHAR(10),
    State VARCHAR(20),
    City VARCHAR(30),
    Zip VARCHAR(10),
    Salary INT,
    Month INT,
    Day INT,
    Year INT,
    First_name VARCHAR(30),
    Middle_name VARCHAR(30),
    Last_name VARCHAR(30),
    Phone_number VARCHAR(15),
    Email VARCHAR(50),
    Emergency_contact VARCHAR(15),
    Male BOOLEAN,
    Female BOOLEAN
);

CREATE TABLE SALON (
    Name VARCHAR(50),
    Address VARCHAR(100),
    PRIMARY KEY (Name)
);

CREATE TABLE CUSTOMER (
    ID INT PRIMARY KEY,
    First_name VARCHAR(30),
    Middle_name VARCHAR(30),
    Last_name VARCHAR(30),
    Number VARCHAR(10),
    Street VARCHAR(50),
    Apartment_number VARCHAR(10),
    State VARCHAR(20),
    City VARCHAR(30),
    Zip VARCHAR(10),
    Phone_number VARCHAR(15),
    Email VARCHAR(50),
    Emergency_contact VARCHAR(15),
    Salon_name VARCHAR(100),
    FOREIGN KEY (Salon_name) REFERENCES SALON(Name)
);

CREATE TABLE PET (
    ID INT PRIMARY KEY,
    Name VARCHAR(30),
    DOB DATE,
    Age INT,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(ID)
);

CREATE TABLE GROOMER (
    Name VARCHAR(100),
    SSN VARCHAR(15) PRIMARY KEY,
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE STAFF (
    Name VARCHAR(100),
    SSN VARCHAR(15),
    PRIMARY KEY (Name, SSN),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE EMPLOYS (
    SSN VARCHAR(15),
    Name VARCHAR(100),
    PRIMARY KEY (SSN, Name),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN),
    FOREIGN KEY (Name) REFERENCES SALON(Name)
);

CREATE TABLE HELPS (
    SSN VARCHAR(15),
    ID INT,
    PRIMARY KEY (SSN, ID),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN),
    FOREIGN KEY (ID) REFERENCES CUSTOMER(ID)
);

CREATE TABLE GROOMS (
    SSN VARCHAR(15),
    ID INT,
    PRIMARY KEY (SSN, ID),
    FOREIGN KEY (SSN) REFERENCES GROOMER(SSN),
    FOREIGN KEY (ID) REFERENCES PET(ID)
);

CREATE TABLE PET_MULTIVALUE (
    ID INT PRIMARY KEY,
    Breed_type VARCHAR(30),
    FOREIGN KEY (ID) REFERENCES PET(ID)
);

INSERT INTO CUSTOMER VALUES (5413, 'Dead', NULL, 'Pool', 549, 'Francis St', NULL, 'IL', 'Big Red', '84563', '5463218964', 'pool@email.com', 'Vanessa', 'Fur Baby Salon'),
                            (4862, 'John', NULL, 'Wick', 245, 'Gun Ln', NULL, 'IL', 'Mob City', '00025', '8961254687', 'wick@email.com', 'The Manager', 'Fur Baby Salon'),
                            (3185, 'Bruce', NULL, 'Wayne', 201, 'Bat Rd', NULL, 'IL', 'Gotham', '98746', '1111111111', 'wayne@email.com', 'Alfred', 'Fur Baby Salon'),
                            (2189, 'Steve', NULL, 'Rogers', 916, 'America St', NULL, 'IL', 'Freedom', '88893', '8521367415', 'rogers@email.com', 'Black Widow', 'Fur Baby Salon'),
                            (1187, 'Tony', NULL, 'Stark', 854, 'Money Ln', NULL, 'IL', 'Avengers', '55548', '8963214567', 'stark@email.com', 'Pepper', 'Fur Baby Salon'),
                            (0079, 'Bruce', NULL, 'Banner', 581, 'Big Mad Dr', NULL, 'IL', 'Green City', '55548', '1324658521', 'banner@email.com', 'Thor', 'Fur Baby Salon');

INSERT INTO EMPLOYEE VALUES ('000-12-8888', '420', 'Scooby Dr', NULL, 'IL', 'Carol Stream', '60188', 40000, 01, 8, 1995, 'Jane', 'Cain', 'DOE', 6304569874, 'doe@petsalon.com', 'John Doe', false, true),
                            ('123-00-0000', '11285', 'Howison Rd', NULL, 'IL', 'Dekalb', '84067', 45000, 05, 20, 1968, 'Teddy', NULL, 'Letty', 5468924897, 'letty@petsalon.com', 'Bob Belcher', true, false),
                            ('456-11-0101', '9874', 'Kitty St', NULL, 'IL', 'Wheaton', '60187', 50000, 10, 5, 1995, 'Cat', NULL, 'Tail', 6304569874, 'tail@petsalon.com', 'Betty Tail', false, true),
                            ('789-02-0202', '658', 'Burger Ln', 6, 'IL', 'Seynours Bay', '07001', 55000, 12, 16, 1970, 'Linda', NULL, 'Belcher', 5419870235, 'lbelcher@petsalon.com', 'Bob Belcher', false, true),
                            ('321-22-2222', '5312', 'Burger Ln', 6, 'IL', 'Seynours Bay', '07001', 35000, 04, 12, 1975, 'Bob', NULL, 'Belcher', 9872340321, 'bbelcher@petsalon.com', 'Linda Belcher', true, false),
                            ('654-33-3333', '510', 'Gregory Ave', 3, 'IL', 'Glendale Heights', '60139', 30000, 11, 11, 1980, 'Nikki', 'Mickey', 'Dean', 8521345978, 'dean@petsalon.com', 'Dikki Dean', false, true),
                            ('132-44-0404', '420', 'Scooby Dr', NULL, 'IL', 'Carol Stream', '60188', 58000, 06, 1, 1985, 'John', 'Con', 'DOE', 2593123654, 'doejohn@petsalon.com', 'Jane Doe', true, false),
                            ('213-45-4545', '67921', 'Moo Dr', NULL, 'IL', 'Carol Stream', '60188', 34000, 03, 20, 1990, 'Nicole', 'Mary', 'Smith', 9852031456, 'smith@petsalon.com', 'Jeff Smith', false, true),
                            ('465-05-0505', '1357', 'Sheep Ln', 2, 'IL', 'Carol Stream', '60188', 42000, 08, 24, 1995, 'Jean', 'Lean', 'Kean', 6301254789, 'kean@petsalon.com', 'Dennis Kean', false, true),
                            ('879-66-6666', '610', 'Horsethief St', NULL, 'IL', 'Carol Stream', '60188', 39000, 07, 15, 2000, 'Peter', NULL, 'Parker', 4002318951, 'parker@petsalon.com', 'Mary Jane', true, false);

INSERT INTO SALON VALUES ('Fur Baby Salon', '222 animal st');

INSERT INTO EMPLOYS VALUES ('000-12-8888', 'Fur Baby Salon'),
                           ('123-00-0000', 'Fur Baby Salon'),
                           ('456-11-0101', 'Fur Baby Salon'),
                           ('789-02-0202', 'Fur Baby Salon'),
                           ('321-22-2222', 'Fur Baby Salon'),
                           ('654-33-3333', 'Fur Baby Salon'),
                           ('132-44-0404', 'Fur Baby Salon'),
                           ('213-45-4545', 'Fur Baby Salon'),
                           ('465-05-0505', 'Fur Baby Salon'),
                           ('879-66-6666', 'Fur Baby Salon');

INSERT INTO GROOMER VALUES ('Jane','000-12-8888'),
                           ('Teddy','123-00-0000'),
                           ('Cat', '456-11-0101'),
                           ('Linda', '789-02-0202'),
                           ('Bob', '321-22-2222');


INSERT INTO GROOMS VALUES  ('000-12-8888', 1234),
                           ('123-00-0000', 1111),
                           ('456-11-0101', 2222),
                           ('789-02-0202', 3333),
                           ('789-02-0202', 4444),
                           ('321-22-2222', 5555);

INSERT INTO PET VALUES (1234, 'Blade', '2020-5-6', 4,5413),
                       (1111, 'Daisy', '2021-8-7', 3,4862),
                       (2222, 'Shadow', '2016-4-3', 8,3185),
                       (3333, 'Liberty', '2012-1-2', 12,2189),
                       (4444, 'Rocket', '2023-6-5', 1,1187),
                       (5555, 'Newton', '2015-5-10', 9,0079);

INSERT INTO PET_MULTIVALUE VALUES (1234, 'domestic short hair'),
                                  (1111, 'beagle'),
                                  (2222, 'domestic short hair'),
                                  (3333, 'german shepard'),
                                  (4444, 'black lab'),
                                  (5555, 'australian shepard');

INSERT INTO STAFF VALUES   ('Nikki', '654-33-3333'),
                           ('John', '132-44-0404'),
                           ('Nicole', '213-45-4545'),
                           ('Jean', '465-05-0505'),
                           ('Peter', '879-66-6666');

INSERT INTO HELPS VALUES   ('654-33-3333',5413 ),
                           ('654-33-3333',4862),
                           ('132-44-0404',3185 ),
                           ('213-45-4545',2189 ),
                           ('465-05-0505',1187 ),
                           ('879-66-6666',0079 );


SHOW TABLES;
SELECT * FROM CUSTOMER;
SELECT * FROM EMPLOYEE;
SELECT * FROM EMPLOYS;
SELECT * FROM GROOMER;
SELECT * FROM GROOMS;
SELECT * FROM HELPS;
SELECT * FROM PET;
SELECT * FROM PET_MULTIVALUE;
SELECT * FROM SALON;
SELECT * FROM STAFF;

/* Select the name of the
   groomer who grooms daisy
   and show her breed_type */
SELECT g.Name AS GroomerName, p.Name AS PetName, pm.Breed_type AS BreedType
FROM GROOMER g
JOIN GROOMS gr ON g.SSN = gr.SSN
JOIN PET p ON gr.ID = p.ID
JOIN PET_MULTIVALUE pm ON p.ID = pm.ID
WHERE p.Name = 'Daisy';

/* Select the names of all customers
   and their pet names who are helped
   by the staff member Nikki */
SELECT c.First_name AS CustomerName, p.Name AS PetName, s.Name AS StaffName
FROM STAFF s
JOIN HELPS h ON h.SSN = s.SSN
JOIN CUSTOMER c ON h.ID = c.ID
JOIN PET p ON c.ID = p.CustomerID
WHERE s.Name = 'Nikki';

/* Select the names and breed_type
   of all the pets who are groomed
   by Linda */
SELECT p.Name AS PetName, pm.Breed_type AS BreedType, gm.Name AS GroomerName
FROM PET p
JOIN PET_MULTIVALUE pm ON pm.ID = p.ID
JOIN GROOMS g ON g.ID = p.ID
JOIN GROOMER gm ON gm.SSN = g.SSN
WHERE gm.Name = 'Linda';

/*
Select the name of all employees
who are groomers
*/
SELECT e.First_name AS GroomerFirstName, e.Last_name AS GroomerLastName
FROM EMPLOYEE e
JOIN GROOMER gm ON gm.SSN = e.SSN;

/*
Select the name of all employees
who are staff
*/
SELECT e.First_name AS StaffFirstName, e.Last_name AS StaffLastName
FROM EMPLOYEE e
JOIN STAFF s ON s.SSN = e.SSN;

/*
Select the name of all employees
who live in Carol Stream and show if
they are a groomer or a staff member
*/
SELECT e.First_name AS EmployeeFirstName, e.Last_name AS EmployeeLastName, s.Name AS StaffMember, gm.Name AS Groomer
FROM EMPLOYEE e
LEFT JOIN STAFF s ON s.SSN = e.SSN
LEFT JOIN GROOMER gm ON gm.SSN = e.SSN
WHERE e.City = 'Carol Stream';




