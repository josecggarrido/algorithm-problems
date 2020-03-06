
=begin

Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

=end

def find_sum(k, array)
  array.sort
  i = 0
  j = array.length-1
  found = false

  while (!found) && (i < array.length - 1) && (j > 0)
    found = array[i] + array[j] == k
    if !found
      if array[i] + array[j] < k
        i += 1 
      else
        j -= 1
      end
    end
  end
  found
end

array = [3, 10, 11, 12, 13, 16, 17, 18, 19, 22, 24, 31, 32, 34, 35, 37, 39, 40, 49, 50]
k = 23

found = find_sum(k, array)

p found
