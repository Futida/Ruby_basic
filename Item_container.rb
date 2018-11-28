module ItemContainer

    module ClassMethods    
        def min_price
            100
        end
    end

    module InstanceMethods

        def method_missing(method_name)
            if method_name =~ /^all_/
                show_all_items_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
            else
                super
            end
        end

        def add_item(item)
            #print self
            unless item.price < self.class.min_price
                @items.push item
            end
        end
    
        def remove_item
            @items.pop
        end
    
        def validate
            @items.each { |el| puts 'Item has no price' if el.price.nil? }
        end
    
        def delete_invalid_items
            @items.delete_if { |i| i.price.nil? }
        end
    
        def count_valid_items
            @items.count { |i| i.price }
        end
    end

    private

        def show_all_items_with_name(name)
            @items.reject { |i| i if name != i.name }.map{ |i| i.to_s }
            # arr = arr.map! { |i| i.to_s }
            #filtereditems.map { |i| i.to_s }
        end 

    def self.included(base)
        #p base
        base.extend ClassMethods
        base.class_eval do 
            include InstanceMethods
        end
    end

end