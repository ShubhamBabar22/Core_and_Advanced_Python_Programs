#Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero.
try:
    num = int(input("Enter a number: "))
    result = num / 0  # Attempting division by zero
except ZeroDivisionError:
    print("Error: Division by zero is not allowed.")

#OUTPUT
"""
Enter a number: 12
Error: Division by zero is not allowed.
"""