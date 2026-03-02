import unittest
from main import add

# Pytest автоматически найдет функции, начинающиеся с test_
def test_add_simple():
    assert add(2, 3) == 5
    assert add(-1, 1) == 0

# Либо через класс unittest
class TestMath(unittest.TestCase):
    def test_add_class(self):
        self.assertEqual(add(100, 200), 300)

if __name__ == '__main__':
    unittest.main()