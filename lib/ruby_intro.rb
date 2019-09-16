# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # This looked like the easiest way to sum an array https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
  sum = arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = arr.max(2).reduce(0,:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  return false if s.downcase.start_with?("0","1","2","3","4","5","6","7","8","9", "#")
  vowel = s.downcase.start_with?("a", "e", "i", "o", "u")
  !vowel
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s.to_i(2) % 4 == 0 if s =~ /^[0-1]+$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
