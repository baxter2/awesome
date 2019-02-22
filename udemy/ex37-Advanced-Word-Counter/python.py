def number_of_words_v1(filepath):
    with open(filepath, "r") as file:
        string = file.read()
    string = string.replace(",", " ")
    string_list = string.split(" ")
    print(len(string_list))

number_of_words_v1("words2.txt")

import re

def number_of_words_v2(filepath):
    with open(filepath, "r") as file:
        string = file.read()
    string_list = re.split(",| ", string)
    print(len(string_list))

number_of_words_v2("words2.txt")
