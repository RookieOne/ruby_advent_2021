require "./code/best_of_two/file_reader"

RSpec.describe "FileReader" do
  it "returns correct count of items in file" do
    items = FileReader.read_file("./spec/best_of_two/items.txt")

    expect(items.count).to  eq(6)
  end
end
