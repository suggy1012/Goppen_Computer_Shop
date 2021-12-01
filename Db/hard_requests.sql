SELECT (SELECT Surname FROM Users Where id = User_id) AS Surname, 
(SELECT Name FROM Users Where id = User_id) AS Name, 
Product_id FROM Carts;

SELECT (SELECT Name FROM Users Where id = User_id) AS Name, 
(SELECT Surname FROM Users Where id = User_id) AS Surname, 
Id FROM Orders
WHERE Orders.User_id = (SELECT Id FROM Users WHERE Surname = 'Дудка');

SELECT * from Carts INNER JOIN Users
WHERE Carts.User_id = Users.Id;

SELECT * from Carts LEFT JOIN Orders
WHERE Carts.id = Orders.Cart_id;

SELECT (SELECT Surname FROM Users Where id = User_id) AS Surname, 
(SELECT Name FROM Users Where id = User_id) AS Name,
(SELECT Id FROM Orders Where id = User_id) as Order_id, 
Products_number FROM Carts;