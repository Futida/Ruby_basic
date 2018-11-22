require_relative 'init'

cart = Cart.new(ARGV.delete_at(0))

ARGV.each do |a|
    @goods.each { |i| cart.add_item(i) if a == i.name }
end

begin
cart.save_to_file
rescue StandardError => e #Cart::ItemsNotSupported
    p e.message
    p "One of the items is not supported by the Cart. Unsupported item class-es #{Cart::UNSUPPORTED_ITEMS}"
    e.backtrace.each { |i| p i }
end
#cart.read_from_file