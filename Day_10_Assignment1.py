
 #Write a Python program to sum all the items in a list.
def sum_list(lst):
    total = 0
    for num in lst:
        total += num
    return total

numbers = [1, 22, 3, 4, 5]
print("Sum of list:", sum_list(numbers))
  
#OUTPUT
"""
Sum of list: 35
"""