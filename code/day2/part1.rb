class Day2Part1
  def self.get_answer(input)
    commands = []

    input.each do |line|
      words = line.split(" ")
      commands << {
        command: words[0],
        number: words[1].to_i
      }
    end

    horizontal_position = 0
    depth = 0

    commands.each do |command|
      case command[:command]
      when "forward"
        horizontal_position += command[:number]
      when "up"
        depth -= command[:number]
      when "down"
        depth += command[:number]
      end
    end

    horizontal_position * depth
  end
end
