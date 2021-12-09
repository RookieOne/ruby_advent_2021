require 'pry'

class Day1Problem2
  def initialize(input)
    @depths = create_depths(input)
  end

  def create_depths(input)
    depth_window = []
    depths = []

    input.each do |current_depth|
      if depth_window.count < 3
        depth_window << current_depth
      else
        depths << depth_window.sum()

        depth_window[0] = depth_window[1]
        depth_window[1] = depth_window[2]
        depth_window[2] = current_depth
      end
    end

    depths << depth_window.sum()
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
