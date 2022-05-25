class Item
  attr_reader :id, :price_in_cents

  def initialize(id, price_in_cents)
    @id = id
    @price_in_cents = price_in_cents
  end

  def to_s
    "#{id}, #{price_in_cents}"
  end
end
