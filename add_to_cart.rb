require_relative 'init'

cart = Cart.new(ARGV.delete_at(0))

ARGV.each do |a|
    @goods.each { |i| cart.add_item(i) if a == i.name }
end


cart.read_from_file
#cart.save_to_file