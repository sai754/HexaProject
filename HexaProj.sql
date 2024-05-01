use CarConnect;

CREATE TABLE [Customer] (
  [CustomerID] Int,
  [FirstName] Varchar(50),
  [LastName] Varchar(50),
  [Email] Varchar(70),
  [PhoneNumber] Int,
  [Address] Varchar(255),
  [Username] Varchar(255),
  [Password] Varchar(255),
  [RegistrationDate] Date,
  PRIMARY KEY ([CustomerID])
);

CREATE TABLE [Vehicle] (
  [VehicleID] Int,
  [Model] Varchar(50),
  [Make] Varchar(50),
  [Year] Date,
  [Color] Varchar(50),
  [RegistrationNumber] Varchar(50),
  [Availability] Bit,
  [DailyRate] Decimal(5,2),
  PRIMARY KEY ([VehicleID])
);

CREATE TABLE [Reservation] (
  [ReservationID] Int,
  [CustomerID] Int,
  [VehicleID] Int,
  [StartDate] Date,
  [EndDate] Date,
  [TotalCost] Decimal(10,2),
  [Status] Varchar(20),
  PRIMARY KEY ([ReservationID]),
  Foreign Key ([CustomerID]) references Customer([CustomerID]),
  Foreign Key ([VehicleID]) references Vehicle([VehicleID])
);

CREATE TABLE [Admin] (
  [AdminID] Int,
  [FirstName] Varchar(50),
  [LastName] Varchar(50),
  [Email] Varchar(50),
  [PhoneNumber] Int,
  [Username] Varchar(50),
  [Password] Varchar(50),
  [Role] Varchar(50),
  [JoinDate] Date,
  PRIMARY KEY ([AdminID])
);


