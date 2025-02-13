#1. Declare a div() function with two parameters. Then call the function and pass two numbers and display their division. 25
def div(a, b):
    return a / b  

# Call the function with two numbers
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))

# Check if denominator is not zero to avoid error
if num2 != 0:
    print("Division:", div(num1, num2))
else:
    print("Division by zero is not allowed.")

#OUTPUT
'''Enter first number: 25
Enter second number: 5
Division: 5.0'''

"""Enter first number: 5
Enter second number: 0
Division by zero is not allowed.
"""