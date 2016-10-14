# Structs exists though implemented as lightweight class
# Basically struct is a plain old data structure

class StructsRuby
  # Public Class method to create struct
  #=> Struct::Customer
  product_structure = Struct.new("Book", :book_name, :book_id, :price)
  puts(product_structure)
  #=> <struct Struct::Book book_name="Ruby for Everyone", price="$10">
  books = Struct::Book.new("Ruby for Everyone", 1, "$10")
  puts(books.inspect)

  # Public Instance methods
  #=> StructsRuby::Movies
  Movies = Struct.new(:movie_name, :movie_rating, :movie_budget)
  puts(Movies)
  avengers = Movies.new("Avengers", 3.5, "$220 million")
  avengers2 = Movies.new("Avengers", 3.5, "$220 million") # adding same values
  spiderman = Movies.new("Spiderman", 3.3, "$230 million")

  # Collecting all the movies in array
  total_movies = [avengers, avengers2, spiderman]
  print(total_movies)
  puts() # new line
  puts(avengers)
  puts(avengers2)
  puts(spiderman)

  # Checking values are same
  puts(avengers == avengers2) # true
  puts(avengers2 == spiderman) # false

  # Returning a value in struct using symbol or fixnum
  puts(avengers[:movie_name])
  puts(avengers[1])
  puts(avengers["movie_budget"])

  #=> each{|obj| block} -> struct
  avengers.each { |x| puts(x) }

  #=> each_pair{|name, value| block}
  avengers.each_pair {|name, value| puts("#{name} => #{value}")}

  # length
  puts(avengers.length)

  # members -> array
  puts(avengers2.members)

  # values_at
  puts(avengers.values_at(1,2))
end


