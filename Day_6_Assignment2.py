#Python Program to Check Whether a Number is Palindrome or Not
num = int(input("Enter a number: "))  
original = num  # Store the original number  
rev = 0  # Variable to store the reversed number  

while num > 0:
    rev = rev * 10 + num % 10  # Extract last digit and add to reversed number
    num //= 10  # Remove last digit

# Check if the original and reversed numbers are the same
if original == rev:
    print("The number is a Palindrome.")
else:
    print("The number is NOT a Palindrome.")

#OUTPUT
"""Enter a number: 123
The number is NOT a Palindrome.

Enter a number: 141
The number is a Palindrome."""