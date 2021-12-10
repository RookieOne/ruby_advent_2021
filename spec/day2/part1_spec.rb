require "./code/day2/part1"
# require "./code/day1/file_reader"

RSpec.describe "Day 2 Part 1" do
  it "example should be 150" do
    input = [
      "forward 5",
      "down 5",
      "forward 8",
      "up 3",
      "down 8",
      "forward 2"
    ]

    answer = Day2Part1.get_answer(input)

    expect(answer).to   eq(150)
  end
end
