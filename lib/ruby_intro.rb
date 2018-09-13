# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  k = 0
  arr.each do |m| 
      k += m end
  return k
end

def max_2_sum arr
  if arr.empty? == true
    return 0
  elsif arr.length == 1
    return arr[0]
  elsif
    arr.sort!
    len = arr.length
    sum = arr[len-1] + arr[len-2]
    return sum
  end
end

def sum_to_n? arr, sum
 
   
  # check whether any two elements sum to n
  result = false
  arr.each do |m| 
    arr.each do |n| 
      if m != n and m + n == sum
          result = true
      end
    end
  end
  return result
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyz]/i === s
end

def binary_multiple_of_4? s
  /^0+$|^[01]*00$/ === s
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
   
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf "$%.2f", @price
  end
end