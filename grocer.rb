def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item_index = 0 
  while item_index < collection.length do
    if name == collection[item_index][:item]
      return collection[item_index]
    end
  item_index += 1 
  end 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
 new_cart = []
 item_index = 0
 while item_index < cart.length do 
   new_cart_item = find_item_by_name_in_collection(cart[item_index][:item], new_cart)
   if new_cart_item 
     new_cart_item[:count] += 1
   else 
     new_cart_item = cart[item_index]
     new_cart_item[item_index][:count] = 1
     new_cart << new_cart_item
   end
   item_index += 1
   
 end
 end
 
 
 
 
 
 # pp cart
  all_unique_items_with_count = [{:count => 1, :name => "TEMPEH"}]
  cart_item_index = 0 
  while cart_item_index < cart.length do 
   item_with_count = {}
   
  # if 

  cart_item_to_be_tested = cart[cart_item_index][:item]
  unique_item_index = 0 
  while unique_item_index < all_unique_items_with_count.length do
  if cart_item_to_be_tested == all_unique_items_with_count[unique_item_index][:name]
   # pp unique_item_index
   cart_item_is_duplicate = true
    duplicate_unique_item_index = unique_item_index
  else
    cart_item_is_duplicate = false
  end
  unique_item_index += 1
end

if cart_item_is_duplicate
# not else
#last thing to do here is to make the index dynamic, so that it will update the right count each time, depending on which item wer're adding
pp all_unique_items_with_count[unique_item_index][:count] += 1

 else
   item_with_count = find_item_by_name_in_collection(cart[cart_item_index][:item],cart)
   item_with_count[:count] = 1
   all_unique_items_with_count << item_with_count
  end
    cart_item_index += 1 
  end

  pp all_unique_items_with_count
#end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
