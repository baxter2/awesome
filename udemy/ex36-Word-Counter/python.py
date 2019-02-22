def number_of_words(filepath):
    with open(filepath, "r") as file:
        string = file.read()
        string_list = string.split(" ")
        print(len(string_list))

number_of_words("words1.txt")
