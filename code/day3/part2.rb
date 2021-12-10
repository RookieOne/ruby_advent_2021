class Day3Part2
  def self.get_answer(numbers)
    gamma_rate = 0

    # numbers
    # [
    #   "00100",
    #   "11110",
    #   "10110",
    #   "10111"
    # ]

    number_of_digits = numbers[0].length

    filtered_numbers = numbers

    (0..(number_of_digits - 1)).each do |i|
      # find the most common bit in all the numbers
      number_of_ones = 0
      number_of_zeroes = 0

      filtered_numbers.each do |number|
        if number[i] == "1"
          number_of_ones += 1
        else
          number_of_zeroes += 1
        end
      end

      most_common_bit = "1"

      if number_of_ones < number_of_zeroes
        most_common_bit = "0"
      end

      filtered_numbers = filtered_numbers.filter do |number|
        number[i] == most_common_bit
      end

      p "[#{i}]"
      p "most common: #{most_common_bit}"
      p filtered_numbers
    end
    
    p filtered_numbers
  end
end
