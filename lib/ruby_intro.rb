# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |val|
    total += val
  end
  return total
end

def max_2_sum arr
  sorted_arr = arr.sort()
  if sorted_arr.length() == 0
    return 0
  elsif sorted_arr.length() < 2
    return sorted_arr[0]
  end
  return sorted_arr[-1] + sorted_arr[-2]
end

def sum_to_n? arr, n
  if arr.length() < 2
    return false
  end
  (0..arr.length()-1).each do |val1|
    arr[val1, arr.length()-val1].each do |val2|
      if val1 + val2 == n
        return true
      end
    end
  end
  return false
    
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if((s=~/[a-z]/i) == 0)
    return !((s=~/[aeiou]/i) == 0)
  end
  return false
end

def binary_multiple_of_4? s
  if((s=~/[^01]/i) != nil)    #return false if not a binary string
    return false
  end
  if(s.length < 2)            #return if only one character in string
    return s == "0"
  end
  return s[-2, 2] == "00"
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new(
      "Expected ISBN cannot be empty string and price cannot be <= 0"
      ) if isbn.length == 0 || price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price   #apply getters and setters to instance variables
  
  def price_as_string
    "$%0.2f" % [@price]
  end
  
end
