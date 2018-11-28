class StoreApplication
    class << self
        def config
            unless @instance
                require_relative 'string'
                require_relative 'item_container'
                require_relative 'item'
                require_relative 'RealItem'
                require_relative 'VirtualItem'
                require_relative 'order'
                require_relative 'cart'
            end
            @instance ||= self
        end
    end
end