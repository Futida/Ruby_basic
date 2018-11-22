require_relative 'string'
require_relative 'item_container'
require_relative 'item'
require_relative 'RealItem'
require_relative 'VirtualItem'
require_relative 'cart'
require_relative 'order'
@goods = []

@goods << VirtualItem.new({ :price => 105, :weight => 50, :name => 'tv' })
@goods << RealItem.new({ :price => 1000, :weight => 10, :name => 'kettler' })
@goods << RealItem.new({ :price => 2000, :weight => 200, :name => 'table' })

#item2.info { |attr| p attr }


#cart = Cart.new
#cart.add_item item1
#cart.add_item item2
#p cart.items.size

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