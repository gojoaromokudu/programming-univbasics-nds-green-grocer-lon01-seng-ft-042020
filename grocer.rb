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
     new_cart_item = {
       :item => cart[item_index][:item],
       :price => cart[item_index][:price],
       :clearance => cart[item_index][:clearance],
       :count => 1
     }
     new_cart << new_cart_item
   end
   item_index += 1
   end
   new_cart
 end
 
def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  coupon_index = 0 
  while coupon_index < coupons.length do 
    item_with_coupon = find_item_by_name_in_collection(coupons[coupon_index][:item], cart)
  #  if item_with_coupon
      #rename the item 
      #also check the quantity
   # else
      
    #end
    counter += 1
  end
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
