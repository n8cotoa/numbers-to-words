def numbers_to_words(number)
  ones_value = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  teens_value = {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
  tens_value = {2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
  steps = ["trillion", "billion", "million", "thousand", "hundred"]
  word_output = ""
  big_number_array = number.split(",")
  big_length = big_number_array.length
  big_number_array.each do |block|
    num_array = block.to_s.split("")
    num_array_length = num_array.length
    # fills array to length of 3
    if num_array_length == 1
      2.times do (num_array.unshift(0)) end
    elsif num_array_length == 2
      num_array.unshift(0)
    end
    # for teens case
    if big_length >= 2
      if num_array[1] == "1"
        if num_array[0] != 0
          word_output += (ones_value[num_array[0].to_i] + " hundred ")
          word_output += (teens_value[num_array[2].to_i] + " " + steps[-big_length] + " ")
        else
          word_output += (teens_value[num_array[2].to_i] + " " + steps[-big_length] + " ")
        end
      # no teens case
      else
        if num_array[0] != 0
          word_output += (ones_value[num_array[0].to_i] + " hundred ")
          unless num_array[1] == 0
            word_output += (tens_value[num_array[1].to_i] + " ")
          end
          unless num_array[2] == 0
            word_output += (ones_value[num_array[2].to_i] + " ")
          end
          word_output += steps[-big_length] + " "
        elsif num_array[1] != 0
          word_output += (tens_value[num_array[1].to_i] + " ")
          unless num_array[2] == 0
            word_output += (ones_value[num_array[2].to_i] + " ")
          end
          word_output += steps[-big_length] + " "
        end
      end
    else
      if num_array[1] == "1"
        if num_array[0] != 0
          word_output += (ones_value[num_array[0].to_i] + " hundred ")
        end
        word_output += (teens_value[num_array[2].to_i])
      # no teens case
      else
        if num_array[0] != 0
          word_output += (ones_value[num_array[0].to_i] + " hundred ")
        end
        if num_array[1] != 0
        word_output += (tens_value[num_array[1].to_i] + " ")
        end
        word_output += (ones_value[num_array[2].to_i])
      end
    end
    big_length -= 1
  end
  word_output
end
