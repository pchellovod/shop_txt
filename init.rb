require_relative 'string'
require_relative 'item_container'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'antique_item'
require_relative 'real_item'
require_relative 'cart'
require_relative 'order'


@items = []
@items << AntiqueItem.new({:price => 101, :weight => 100, :name => "vase"})
@items << VirtualItem.new({:price => 101, :weight => 100, :name => "car"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "kettle"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "dishwasher"})

cart = Cart.new("dmitry")
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 151, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 171, :weight => 100, :name => "kettle"})

p cart.all_cars
p cart.all_kettles




# cart = Cart.new
# cart.add_item item1
# cart.add_item item2
# cart.add_item item3
#
# puts cart.items.size



# item.info {|attr| puts attr}
#

# cart.remove_item
# puts cart.items.size
#
# order = Order.new
# order.add_item item1
# order.add_item item2
# order.add_item item3
# order.remove_item
# puts order.items.size
#
# puts order.count_valid_items
#
# class User < ActiceRecord::Base
#
# end
#
# class ActiveRecord
#   class Base
#
#   end
# end


# puts Item.discount.round 3
# puts '----'
# puts item1.price
# puts item1.real_price
# p Time.now.month


# p cart.items
# cart.delete_invalid_items
# p cart.items
#
# p item1.respond_to?(:weight)
# p item2.respond_to?(:weight)


# cart = Cart.new
# cart.add_item(Item.new)
# cart.add_item(Item.new)
# cart.validate
#
# p cart.items
#
# cart.remove_item
#
# p cart.items

