 #Write a Python program to Count all letters, digits, and special symbols from the given 
#string Input = “P@#yn26at^&i5ve”
 #Output: Chars = 8 Digits = 2 Symbol = 3 

s = "P@#yn26at^&i5ve"      #given string

chars = sum(c.isalpha() for c in s)      #to count the characters.
digits = sum(c.isdigit() for c in s)     #to count the digits.
symbols = len(s) - (chars + digits)      #to count the symbols.

print("Chars =", chars, "Digits =", digits, "Symbols =", symbols)

#OUTPUT
""""
Chars = 8 Digits = 3 Symbols = 4
"""
