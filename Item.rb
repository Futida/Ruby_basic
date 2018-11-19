class Item

    @@discount = 0.1

    def self.discount
        if Time.now.month == 8
            @@discount + 0.2
        else
            @@discount
        end
    end

    attr_accessor :name, :real_price

    def initialize(config = {})
        @name = config[:name]
        @real_price = config[:price]
    end

    def info
        yield price
        yield name
    end

    def price
        ((@real_price - @real_price*self.class.discount) + tax) if @real_price
    end

    private

        def tax 
            type_tax = if self.class == VirtualItem
                1
            else
                2
            end
            cost_tax = if @real_price > 5
                @real_price*0.2
            else
                @real_price*0.1
            end
            cost_tax + type_tax

        end

end