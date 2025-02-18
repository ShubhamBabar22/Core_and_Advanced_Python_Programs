#Write a Python program to get the largest and smallest number from a list without built in functions. 
def find_min_max(lst):
    if not lst:
        return None, None  # Handle empty list case
    min_num = lst[0]
    max_num = lst[0]
    
    for num in lst:
        if num < min_num:
            min_num = num
        if num > max_num:
            max_num = num
    return min_num, max_num

numbers = [7, 2, 8, 1, 5, 9]
smallest, largest = find_min_max(numbers)
print("Smallest number:", smallest)
print("Largest number:", largest)

#OUTPUT
""""
Smallest number: 1
Largest number: 9
"""