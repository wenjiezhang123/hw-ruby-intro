# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
  # if arr.length == 0; return 0 end
  # arr.inject{|sum,e| sum+e}
end

def max_2_sum arr
  if arr.length == 0; return 0 end
  if arr.length == 1; return arr[0] end
  return arr.sort[-1]+arr.sort[-2]
end

def sum_to_n? arr, n
  if arr.length == 1 or arr.length == 0; return false end
  arr.uniq.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  'Hello, ' + name
  # "Hello, #{name}"
end

def starts_with_consonant? s
   /^[bcdfghjklmnpqrstvwxyz]/i.match(s)
end

def binary_multiple_of_4? s
  # ^ means start of the line [01] means match a 0 or a 1, 
  # * means match the previous thing ([01]) zero or more times, 
  # and (00) means match 00, and $ means match the end of the line.
  if s == "0"; return true end
  if /^[01]*(00)$/.match(s); return true end
  return false
end 
  # if s.to_i(2)%4 == 0; return true end        //not work for not valid binary number ex: 'a100'
  # return false
  
# Part 3

class BookInStock
  attr_accessor :isbn, :price
	def initialize(isbn, price)
	  @price = price
	  @isbn = isbn
		raise ArgumentError, 'argument error' unless  !isbn.empty? and price > 0
	end

	def price_as_string
	  result = "$%.2f" % price; return result
	end
end

