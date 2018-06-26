def numbers_to_words(number)
  num_array = number.to_s.split("")
  num_array_length = num_array.length
  if num_array_length == 1
    2.times do (num_array.unshift(0)) end
  elsif num_array_length == 2
    num_array.unshift(0)
  end
  ones_value = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  teens_value = {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
  tens_value = {2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
  word_output = ""
  if num_array[1] == "1"
    if num_array[0] != 0
      word_output += (ones_value[num_array[0].to_i] + " hundred ")
    end
    word_output += (teens_value[num_array[2].to_i])
  else
    if num_array[0] != 0
      word_output += (ones_value[num_array[0].to_i] + " hundred ")
    end
    if num_array[1] != 0
    word_output += (tens_value[num_array[1].to_i] + " ")
    end
    word_output += (ones_value[num_array[2].to_i])
  end
  word_output
end
