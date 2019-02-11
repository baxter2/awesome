# https://stackoverflow.com/questions/54627480/python-equivalent-of-rubys-find
def common_dimension(fro , to):
    for key, value in CONVERSION_FACTORS.items():
        if (fro in value) and (to in value):
            return key   

CONVERSION_FACTORS = {
  'metre': {
    'kilometre':     0.001,
    'metre':         1.0,
    'centimetre':  100.0,
    'millimetre': 1000.0,
    'mile':          0.000621371,
    'yard':          1.09361296,
    'foot':          3.2808388799999997
  },
  'liter': {
    'litre':            1.0, 
    'millilitre':    1000.0, 
    'imperial_pint':    1.75975,
    'imperial_cup':     3.51950030971673
  },
  'kilogram': {
    'tonne':        0.001,
    'kilogram':     1.0,
    'gram':      1000.0, 
    'stone':        0.157473, 
    'pound':        2.20462,
    'ounce':       35.274
  }
}

# >>> CONVERSION_FACTORS.items()
# [('litre', {'imperial_cup': 3.51950030971673, 'litre': 1.0, 'imperial_pint': 1.75975, 'millilitre': 1000.0}), ('metre', {'kilometre': 0.001, 'millimetre': 1000.0, 'yard': 1.09361296, 'metre': 1.0, 'mile': 0.000621371, 'foot': 3.2808388799999997, 'centimetre': 100.0}), ('kilogram', {'tonne': 0.001, 'stone': 0.157473, 'pound': 2.20462, 'kilogram': 1.0, 'ounce': 35.274, 'gram': 1000.0})]

# >>> for key, value in CONVERSION_FACTORS.items():
# ...     print(key, value)
# ...
# ('litre', {'imperial_cup': 3.51950030971673, 'litre': 1.0, 'imperial_pint': 1.75975, 'millilitre': 1000.0})
# ('metre', {'kilometre': 0.001, 'millimetre': 1000.0, 'yard': 1.09361296, 'metre': 1.0, 'mile': 0.000621371, 'foot': 3.2808388799999997, 'centimetre': 100.0})
# ('kilogram', {'tonne': 0.001, 'stone': 0.157473, 'pound': 2.20462, 'kilogram': 1.0, 'ounce': 35.274, 'gram': 1000.0})
