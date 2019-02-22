a = ["1", 1, "1", 2]
print(list(set(a)))                  #v1

from collections import OrderedDict
a = ["1", 1, "1", 2]
print(list(OrderedDict.fromkeys(a))) #v2

a = ["1", 1, "1", 2]
b = []
for i in a:
    if i not in b:
        b.append(i)
print(b)                             #v3
