CREATE TABLE "Users" (
	"Id"	INTEGER NOT NULL UNIQUE,
	"Login"	TEXT NOT NULL,
	"Password"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Surname"	TEXT NOT NULL,
	"Date_of_birthday"	INTEGER NOT NULL,
	"Email"	TEXT NOT NULL UNIQUE,
	"Phone_number"	INTEGER NOT NULL UNIQUE,
	"Date_of_registration"	INTEGER NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE "Products" (
	"ID"	INTEGER NOT NULL UNIQUE,
	"Price"	INTEGER NOT NULL,
	"Add_date"	INTEGER NOT NULL,
	"Name"	INTEGER NOT NULL,
	PRIMARY KEY("ID")
);
CREATE TABLE "Orders" (
	"Id"	INTEGER NOT NULL UNIQUE,
	"User_id" INTEGER NOT NULL,
	"Status" TEXT NOT NULL,
	"Price"	INTEGER NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE "Carts" (

	"Id"	INTEGER NOT NULL UNIQUE,
	"User_id"	INTEGER NOT NULL,
	"Product_id"	INTEGER NOT NULL,
	"Products_number"	INTEGER NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);
INSERT INTO Users (Id, Login, Password, Name, Surname, Date_of_birthday, Email, Phone_number, Date_of_registration) VALUES (1, 'Vasilyi228', 123456, 'Aleksei', 'Fuflizhnik', 25041995, 'fufal45@gmail.ru', 89855727654, 30012020);
INSERT INTO Users (Id, Login, Password, Name, Surname, Date_of_birthday, Email, Phone_number, Date_of_registration) VALUES (2, 'duda33', 123456, 'Олег', 'Дудка', 13082005, 'fihtura@gmail.ru', 84568723594, 15042019);
INSERT INTO Users (Id, Login, Password, Name, Surname, Date_of_birthday, Email, Phone_number, Date_of_registration) VALUES (3, 'trabljojo', 123456, 'Игорь', 'Трубник', 25042004, 'kokajoi@gmail.ru', 85426985253, 16092021);
INSERT INTO Products (Id, Price, Name, Add_date) VALUES (1, 1724, 'Godslayer', 21052015);
INSERT INTO Products (Id, Price, Name, Add_date) VALUES (2, 3218, 'Genocide', 01022018);
INSERT INTO Products (Id, Price, Name, Add_date) VALUES (3, 5579, 'Apocalypse', 01052021);
INSERT INTO Orders (Id, User_id, Status, Price) VALUES (1, 1, 'Complete', 1724);
INSERT INTO Orders (Id, User_id, Status, Price) VALUES (2, 2, 'Complete', 3218);
INSERT INTO Orders (Id, User_id, Status, Price) VALUES (3, 3, 'Complete', 5579);
INSERT INTO Carts (Id, User_id, Product_id, Products_number) VALUES (1, 1, 1, 1);
INSERT INTO Carts (Id, User_id, Product_id, Products_number) VALUES (2, 2, 2, 1);
INSERT INTO Carts (Id, User_id, Product_id, Products_number) VALUES (3, 3, 3, 1);