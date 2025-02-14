 #Write a python program to reverse a number using a while loop. 

num = int(input("Enter a number: "))  
rev = 0  

while num > 0:
    rev = rev * 10 + num % 10  # Extract last digit and add to rev
    num //= 10  # Remove last digit

print("Reversed Number:", rev)

#OUTPUT
"""
Enter a number: 23564
Reversed Number: 46532
"""