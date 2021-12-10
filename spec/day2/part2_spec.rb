require "./code/day2/part2"
require "./code/day2/file_reader"

RSpec.describe "Day 2 Part 2" do
  it "example should be 900" do
    input = [
      "forward 5",
      "down 5",
      "forward 8",
      "up 3",
      "down 8",
      "forward 2"
    ]

    answer = Day2Part2.get_answer(input)

    expect(answer).to   eq(900)
  end

  it "input should return answer" do
    input = Day2FileReader.read_file("./spec/day2/input.txt")

    answer = Day2Part2.get_answer(input)

    expect(answer).to   eq(1842742223)
  end
end
