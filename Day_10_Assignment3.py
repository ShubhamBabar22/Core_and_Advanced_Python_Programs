# Write a Python program to find duplicate values from a list and display those.
def find_duplicates(lst):
    duplicates = []  # List to store duplicate values
    seen = set()  # Set to track seen numbers
    
    for num in lst:
        if num in seen:  # If number is already in 'seen', it's a duplicate
            if num not in duplicates:  # Avoid adding the same duplicate multiple times
                duplicates.append(num)
        else:
            seen.add(num)  # Add the number to the 'seen' set
    return duplicates
numbers = [1, 2, 3, 4, 2, 5, 6, 3, 7, 8, 5]
print("Duplicate values:", find_duplicates(numbers))
#OUTPUT
""""
Duplicate values: [2, 3, 5]
"""