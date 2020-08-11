require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
    if items[:item] == name
      return items
    end
  end
  return nil
end


def consolidate_cart (cart)
  new_cart = []
  cart.each do |items|
    items[:count] = 1
    if !new_cart.include? (items)
      new_cart << items
    elsif new_cart.include? (items)
      items[:count] += 1
    end
  end
  new_cart
end
