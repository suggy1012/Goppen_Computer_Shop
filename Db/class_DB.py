import sqlite3
    
class DB:
    def __init__(self):
        self.connection =  sqlite3.connect('Db/Data_base.db')
    
    def newCursor(self):
        self.cursor = self.connection.cursor()
    
    def closeCursor(self):
        self.cursor.close()
        
    def dbClose(self):
        self.connection.close()
        
    def get1(self):
        ogo = ('''
            SELECT (SELECT Surname FROM Users Where id = User_id) AS Surname, 
            (SELECT Name FROM Users Where id = User_id) AS Name, 
            Product_id FROM Carts;
        ''')
        self.cursor.execute(ogo)
        return self.cursor.fetchall()
    
    def get2(self):
        ogo = ('''
            SELECT (SELECT Name FROM Users Where id = User_id) AS Name, 
            (SELECT Surname FROM Users Where id = User_id) AS Surname, 
            Id FROM Orders
            WHERE Orders.User_id = (SELECT Id FROM Users WHERE Surname = 'Дудка');
        ''')
        self.cursor.execute(ogo)
        return self.cursor.fetchall()
    
    def get3(self):
        ogo = ('''
            SELECT * from Carts INNER JOIN Users
            WHERE Carts.User_id = Users.Id; 
        ''')
        self.cursor.execute(ogo)
        return self.cursor.fetchall()
    
    def get4(self):
        ogo = ('''
                SELECT * from Carts LEFT JOIN Orders
            WHERE Carts.id = Orders.Cart_id;
        ''')
        self.cursor.execute(ogo)
        return self.cursor.fetchall()
    
    def get5(self):
        ogo = ('''
            SELECT (SELECT Surname FROM Users Where id = User_id) AS Surname, 
            (SELECT Name FROM Users Where id = User_id) AS Name,
            (SELECT Id FROM Orders Where id = User_id) as Order_id, 
            Products_number FROM Carts;
        ''')
        self.cursor.execute(ogo)
        return self.cursor.fetchall()
    
