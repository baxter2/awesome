def number_of_words_v1(string):
    print(len(string.split()))

def number_of_words_v2(string):
    print(len(string.split(" ")))

number_of_words_v1("We are all in the gutter, but some of us are looking at the stars.")
number_of_words_v1("Hey there it's me!")

number_of_words_v2("We are all in the gutter, but some of us are looking at the stars.")
number_of_words_v2("Hey there it's me!")

