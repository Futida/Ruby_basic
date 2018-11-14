class Item

    attr_accessor :name, :price

    def initialize(config = {})
        @weight = config[:weight],
        @price = config[:price],
    end

end