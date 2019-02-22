import math

def liquid_volume(h, r=10):
    print(((4 * math.pi * r**3) / 3) - ((math.pi * h**2 * (3 * r - h)) / 3 ))

liquid_volume(2)
