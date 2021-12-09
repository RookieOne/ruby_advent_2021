require "./code/day1/problem2"
require "./code/day1/file_reader"

RSpec.describe "Day 1 Problem 2" do
  it "example should be 7" do
    input = [
      199,
      200,
      208,
      210,
      200,
      207,
      240,
      269,
      260,
      263
    ]

    answer = Day1Problem2.new(input).measure_depth()

    expect(answer).to   eq(5)
  end

  it "should solve the problem" do
    input = Day1FileReader.read_file("./spec/day1/input.txt")

    answer = Day1Problem2.new(input).measure_depth()

    expect(answer).to   eq(1822)
  end
end
