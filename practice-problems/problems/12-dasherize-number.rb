# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  str = ""
  arr = num.to_s.split('')
  i = 0
  while i<arr.count
    if is_odd?(arr[i].to_f)
      if i>0 && !(str[-1]=='-')
        str += '-'
      end
      str += arr[i]
      if i<arr.count-1
        str += '-'
      end
    else
      str += arr[i]
    end
    i+=1 
  end
  return str
end

def is_odd?(num)
  if num % 2 > 0
    return true
  else
    return false
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
