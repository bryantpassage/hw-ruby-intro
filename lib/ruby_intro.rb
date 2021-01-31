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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
