class StoreApplication
    class << self
        def config
            unless @instance
                yield(self)
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

        attr_accessor :name, :environment

        def admin(&block)
            @instance ||= Admin.new(&block)
        end
    end

    class Admin

        class << self

            def new
                unless @admin
                     yield(self)
                end
                @admin ||= self 
            end  

            attr_accessor :email, :login

            def send_info_emails_on(day)
                @send_info_emails_on = day
            end
        end

    end

end

