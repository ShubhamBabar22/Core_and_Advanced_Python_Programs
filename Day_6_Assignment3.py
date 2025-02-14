#Python Program to Find the Factorial of a Number using a While Loop
num = int(input("Enter a the number: "))  
fact = 1  
i = 1  

while i <= num:
    fact *= i  # Multiply fact by i
    i += 1  # Increment i

print(f"Factorial of {num} is {fact}")
#OUTPUT
"""
Enter a the number: 6
Factorial of 6 is 720
"""