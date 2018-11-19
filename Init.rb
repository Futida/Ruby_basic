require_relative 'item_container'
require_relative 'cart'
require_relative 'order'
require_relative 'item'
require_relative 'RealItem'
require_relative 'VirtualItem'

item1 = VirtualItem.new({ :price => 10, :name => 'tv' })
item2 = RealItem.new({ :price => 90, :weight => 200, :name => 'kettler' })

#item2.info { |attr| p attr }


cart = Cart.new
cart.add_item item1
cart.add_item item2
p cart.items.size

#order = Order.new
#order.add_item item1
#order.add_item item2
#p order.items.size

#p order.count_valid_items


#p cart.items
#cart.delete_invalid_items
#p cart.items

#p item1.respond_to?(:weight)
#p item2.respond_to?(:weight)

#p Item.discount

#p item2.price

#p item1.tax

#p item2.price
#p item2.real_price