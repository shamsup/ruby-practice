# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  counts={}
  string.split('').each { | letter |
    if counts.include?(letter)
      counts[letter] = counts[letter] + 1
    else
      counts[letter] = 1
    end
  }
  r=[0,0]
  counts.each { |letter,count|
    if count > r[1]
      r = [letter,count]
    end
  }
  r
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
