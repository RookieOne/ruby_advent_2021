require "./code/day1/problem1"

RSpec.describe "Day 1 Problem 1" do
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

    answer = Day1Problem1.new().measure_depth(input)

    expect(answer).to   eq(7)
  end
end
