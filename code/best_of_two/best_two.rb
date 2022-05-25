class BestTwo
  def self.solve(items, gift_card_amount)
    best_items = nil
    best_total = 0

    items.each do |item_1|
      items.each do |item_2|
        items_total = item_1.price_in_cents + item_2.price_in_cents
        
        if item_1.id != item_2.id && items_total <= gift_card_amount
          if best_items == nil || items_total > best_total
            best_total = items_total
            best_items = [
              item_1,
              item_2
            ]
          end
        end
      end
    end

    if best_items.nil?
      "Not possible"
    else
      # return items sorted with highest price first
      best_items.sort { |a,b| b.price_in_cents <=> a.price_in_cents }.map { |i| i.to_s }
    end
  end
end
