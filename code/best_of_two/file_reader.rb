require 'csv'
require './code/best_of_two/item'

class FileReader
  def self.read_file(file_path)
    CSV.read(file_path).map do |row|
      id = row[0].strip()
      price_in_cents = row[1].strip().to_i()
      Item.new(id, price_in_cents)
    end
  end
end
