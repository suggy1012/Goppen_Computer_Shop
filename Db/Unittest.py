from class_DB import DB
import unittest

class TestTable(unittest.TestCase):
    
    @classmethod
    def setUpClass(cls) -> None:
        cls.db = DB()
    
    @classmethod
    def tearDownClass(cls) -> None:
        cls.db.dbClose()
    
    def setUp(self):
        self.db.newCursor()
    
    def tearDown(self):
        self.db.closeCursor()
    
    def test_get1(self):
        res = [('Fuflizhnik', 'Aleksei', 1), ('Дудка', 'Олег', 2), ('Трубник', 'Игорь', 3)]
        self.assertEqual(self.db.get1(), res)
    
    def test_get2(self):
        res = [('Олег', 'Дудка', 2)]
        self.assertEqual(self.db.get2(), res)
        
    def test_get3(self):
        res = [(1, 1, 1, 1, 1, 'Vasilyi228', 123456, 'Aleksei', 'Fuflizhnik', '1995-04-25', 'fufal45@gmail.ru', 89855727654, '2020-05-21'), (2, 2, 2, 3, 2, 'duda33', 123456, 'Олег', 'Дудка', '2005-08-13', 'fihtura@gmail.ru', 84568723594, '2021-02-05'), (3, 3, 3, 5, 3, 'trabljojo', 123456, 'Игорь', 'Трубник', '2004-04-25', 'kokajoi@gmail.ru', 85426985253, '2019-04-25')]
        self.assertEqual(self.db.get3(), res)
        
    def test_get4(self):
        res = [(2, 2, 2, 3, 1, 1, 'Complete', 1724, 2), (3, 3, 3, 5, 2, 2, 'Complete', 3218, 3), (1, 1, 1, 1, 3, 3, 'Complete', 5579, 1)]
        self.assertEqual(self.db.get4(), res)
        
    def test_get5(self):
        res = [('Fuflizhnik', 'Aleksei', 1, 1), ('Дудка', 'Олег', 1, 3), ('Трубник', 'Игорь', 1, 5)]
        self.assertEqual(self.db.get5(), res)
        
    
    
if __name__ == '__main__':
    unittest.main(failfast = False)