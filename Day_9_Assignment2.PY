#Write a Python program to remove duplicate characters of a given string. 

#Input = “String and String Function” 

#Output: String and Function

input_string = "String and String Function"
separated_string = input_string.split()     # Separate the string into words

string_list = []                             # Creating a new list to store unique words


for word in separated_string:                 # Iterate over each word in the list
    if word not in string_list:               # If the word is not already in the list,  to add it
        string_list.append(word)    

new_string = ' '.join(string_list)            #  to Join the list into string
print(new_string)

#OUTPUT
""""
String and Function
"""