"""
Lab2:  Movie Library Create a class MovieLibrary that manages a collection of movies: 
 1. Class Attribute:
   ○ available_movies: A list of all movies available in the library.
 2. Instance Attributes:
   ○ member_name: The name of the library member. 
   ○ borrowed_movies: A list of movies borrowed by the member. 
 3. Methods: 
   ○ borrow_movie(self, movie): Borrows a movie from the library if available. 
   ○ return_movie(self, movie): Returns a movie to the library.
   ○ view_borrowed_movies(self): Prints a list of movies borrowed by the member"""

class MovieLibrary:
    movies = ["Inception", "Interstellar", "The Matrix", "Chaava", "War", "Sultan"]

    def __init__(self, name):
        self.name = name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        if movie in MovieLibrary.movies:
            self.borrowed_movies.append(movie)
            MovieLibrary.movies.remove(movie)
            return f"{self.name} borrowed '{movie}'."
        return "Movie not available."

    def return_movie(self, movie):
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)
            MovieLibrary.movies.append(movie)
            return f"{self.name} returned '{movie}'."
        return "This movie was not borrowed."

    def view_movies(self):
        print(f"{self.name} borrowed movies: {self.borrowed_movies}")


# Example Usage
vivek = MovieLibrary("Vivek")
print(vivek.borrow_movie("Inception"))
print(vivek.borrow_movie("War"))
vivek.view_movies()
print(vivek.return_movie("Inception"))
vivek.view_movies()

#OUTPUT
""""
Vivek borrowed 'Inception'.
Vivek borrowed 'War'.
Vivek borrowed movies: ['Inception', 'War']
Vivek returned 'Inception'.
Vivek borrowed movies: ['War']
"""