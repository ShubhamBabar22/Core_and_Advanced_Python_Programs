'''Write a Python program that prompts the user to input an integer 
and raises a ValueError exception if the input is not a valid integer'''

try:
    num = int(input("Enter an integer: "))  # Prompt user for input
    print("You entered:", num)
except ValueError:
    print("Error: Invalid input. Please enter a valid integer.")

#OUTPUT
"""
Enter an integer: 23
You entered: 23

Enter an integer: sai
Error: Invalid input. Please enter a valid integer.
"""    
