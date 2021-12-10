require "./code/day3/part1"

RSpec.describe "Day 3 Part 1" do
  it "example should be right" do
    input = [
      "00100",
      "11110",
      "10110",
      "10111",
      "10101",
      "01111",
      "00111",
      "11100",
      "10000",
      "11001",
      "00010",
      "01010"
    ]

    answer = Day3Part1.get_answer(input)

    expect(answer[:gamma_bit_string]).to   eq("10110")
    expect(answer[:epsilon_bit_string]).to   eq("01001")

    expect(answer[:gamma_rate]).to   eq(22)
    expect(answer[:epsilon_rate]).to   eq(9)

    expect(answer[:power_consumption]).to   eq(198)
  end
end
