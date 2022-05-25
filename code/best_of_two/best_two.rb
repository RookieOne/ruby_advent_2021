class BestTwo
  def self.solve(items, gift_card_amount)
    # sort items by price from highest to lowest
    sorted_items = items.sort { |a, b| b.price_in_cents <=> a.price_in_cents }

    best_items = nil
    best_total = 0

    sorted_items.each_with_index do |item_1, index|
      item_2 = sorted_items[index + 1..items.length - 1].find do |i|
        (item_1.price_in_cents + i.price_in_cents) <= gift_card_amount
      end

      if item_2
        items_total = item_1.price_in_cents + item_2.price_in_cents

        if best_items == nil || items_total > best_total
          best_total = items_total
          best_items = [
            item_1.to_s,
            item_2.to_s
          ]
        end
      end
    end

    # if best_items = nil then no match was found
    best_items.nil? ? "Not possible" : best_items
  end
end
