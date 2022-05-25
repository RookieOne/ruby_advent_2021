require "./code/best_of_two/best_two"
require "./code/best_of_two/file_reader"

RSpec.describe BestTwo, "#solve" do
  let(:items) { FileReader.read_file("./spec/best_of_two/items.txt") }

  it "should get exact 2 numbers" do
    answer = BestTwo.solve(items, 2500)
    expect(answer).to  eq(["Earmuffs, 2000", "Candy Bar, 500"])
  end

  it "should get closest 2 numbers" do
    answer = BestTwo.solve(items, 2300)
    expect(answer).to  eq(["Headphones, 1400", "Paperback Book, 700"])
  end
  
  it "should handle if no items found" do
    answer = BestTwo.solve(items, 1100)
    expect(answer).to  eq("Not possible")
  end
end
