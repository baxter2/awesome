# https://stackoverflow.com/questions/54704322/python-equivalent-of-ruby-new-method
import random

NAMES = {"fn": ["James", "John", "John"], "ln": ["Smith", "Johnson", "Brown"]}

class RandomNameGenerator(object):
    @classmethod
    def generate(cls):
        return str(cls())

    def __init__(self):
        self.fn = random.choice(NAMES["fn"])
        self.ln = random.choice(NAMES["ln"])

    def __str__(self):
       return self.fn + " " + self.ln
