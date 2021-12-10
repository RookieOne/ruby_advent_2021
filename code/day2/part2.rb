class Day2Part2
  def self.get_answer(input)
    horizontal_position = 0
    depth = 0
    aim = 0

    input.each do |line|
      words = line.split(" ")
      command = words[0]
      number = words[1].to_i

      case command
      when "forward"
        horizontal_position += number
        depth += (aim * number)
      when "up"
        aim -= number
      when "down"
        aim += number
      end
    end

    horizontal_position * depth
  end
end
