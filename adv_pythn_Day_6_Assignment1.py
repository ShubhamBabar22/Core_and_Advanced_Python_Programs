"""Lab1:  Write a Python program to model a Library system. The program should include a class named Library with the following specifications: 

   1. Class Attributes: ○ total_books: A class attribute representing the total number of books available in the library. ○ all_books:
     A class attribute that stores a list of all books available. 
 2. Instance Attributes: 
 ○ name:Nameof the library member. 
 ○ borrowed_books: A list to keep track of books borrowed by the member. 
 3. Methods: 
 ○ borrow_book(self, book): A method to borrow a book from the library. The method should: 
■ Checkif the book is available
■ Addthebook to the member's borrowed list. 
■ Removethe book from the library's all_books list. 
■ Decrease total_books by 1
■ If the book is not available, return a message saying "Book not available." ○ return_book(self, book): A method to return a book. 
The method should: 
 ■ Addthebook back to the library's all_books list.
 ■ Removethe book from the member's borrowed_books list. 
 ■ Increase total_books by 1. 
 4. Class Method: ○ view_library_books(cls): A class method that prints the total number of books and lists all available books."""

class Library:
    total_books = 0
    all_books = []

    def __init__(self, name):
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        if book in Library.all_books:
            self.borrowed_books.append(book)
            Library.all_books.remove(book)
            Library.total_books -= 1
            return f"{self.name} borrowed '{book}'."
        return "Book not available."

    def return_book(self, book):
        if book in self.borrowed_books:
            self.borrowed_books.remove(book)
            Library.all_books.append(book)
            Library.total_books += 1
            return f"{self.name} returned '{book}'."
        return "This book was not borrowed."

    @classmethod
    def view_library_books(cls):
        print(f"Total books in library: {cls.total_books}")
        print("Available books:", cls.all_books)


# Example Usage
Library.all_books = ["Python knowledge", "Data Science ", "AI for Beginners"]
Library.total_books = len(Library.all_books)

member1 = Library("Ram")
print(member1.borrow_book("Python knowledge"))
Library.view_library_books()
print(member1.return_book("Python knowledge"))
Library.view_library_books()


#OUTPUT
"""
Ram borrowed 'Python knowledge'.
Total books in library: 2
Available books: ['Data Science ', 'AI for Beginners']
Ram returned 'Python knowledge'.
Total books in library: 3
Available books: ['Data Science ', 'AI for Beginners', 'Python knowledge']

"""