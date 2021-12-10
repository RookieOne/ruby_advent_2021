class Day1Problem2
  def initialize(input)
    @depths = create_depths(input)
  end

  def create_depths(input)
    depth_window = []
    depths = input.map.with_index do |current_depth, i|
      if i > 1
        input[i-2..i].sum()
      else
        nil
      end
    end.compact()
  end

  def measure_depth()
    total_increases = 0
    previous_depth = nil

    @depths.each do |depth|
      if previous_depth != nil && previous_depth < depth
        total_increases += 1
      end

      previous_depth = depth
    end
    
    total_increases
  end
end
