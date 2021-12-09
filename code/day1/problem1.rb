class Day1Problem1
  def initialize(input)
    @input = input
  end

  def measure_depth()
    total_increases = 0
    previous_depth = nil

    @input.each do |depth|
      if previous_depth != nil && previous_depth < depth
        total_increases += 1
      end

      previous_depth = depth
    end
    
    total_increases
  end
end
