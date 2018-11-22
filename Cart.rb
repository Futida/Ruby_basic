class Cart 

    attr_reader :items

    include ItemContainer

    class ItemNotSupported < StandardError; end

    def initialize(owner)
      @items = []
      @owner = owner
    end

    def save_to_file
      File.open("#{@owner}_cart.txt", "w") do |f|
        @items.each do |i|
          raise ItemNotSupported, 'oops!!!' if i.class == VirtualItem
          f.puts "#{i.name}:#{i.price}:#{i.weight}" 
        end
      end
    end

    def read_from_file
      return unless File.exists?("#{@owner}_cart.txt")
      File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
      p @items
    end
    
end
