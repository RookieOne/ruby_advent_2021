require "./code/day3/part2"
require "./code/day3/file_reader"

RSpec.describe "Day 3 Part 2" do
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

    answer = Day3Part2.get_answer(input)

    expect(answer[:oxygeon_rating]).to   eq("10111")
    expect(answer[:co2_rating]).to   eq("01010")

    expect(answer[:oxygeon_number]).to   eq(23)
    expect(answer[:co2_number]).to   eq(10)

    expect(answer[:life_support_rating]).to   eq(230)
  end

  it "answer from input should be right" do
    input = Day3FileReader.read_file("./spec/day3/input.txt")

    answer = Day3Part2.get_answer(input)

    expect(answer[:oxygeon_rating]).to   eq("010000101111")
    expect(answer[:co2_rating]).to   eq("111001111010")

    expect(answer[:oxygeon_number]).to   eq(1071)
    expect(answer[:co2_number]).to   eq(3706)

    expect(answer[:life_support_rating]).to   eq(3969126)
  end
end
