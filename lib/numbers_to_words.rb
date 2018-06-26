def numbers_to_words(number)
  num_array = number.to_s.split("")
  num_array_length = num_array.length
  ones_value = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  teens_value = {1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
  tens_value = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
  word_output = ""
  if num_array[1] == "1"
    word_output += (ones_value[num_array[0].to_i] + " hundred ")
    word_output += (teens_value[num_array[2].to_i])
  else
    word_output += (ones_value[num_array[0].to_i] + " hundred ")
    word_output += (tens_value[num_array[1].to_i] + " ")
    word_output += (ones_value[num_array[2].to_i])
  end
  word_output
end
