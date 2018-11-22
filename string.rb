class String 
    def to_real_item
        fields = self.chomp
        fields = fields.split(":")
        RealItem.new(name: fields[0], price: fields[1].to_i, weight: fields[2].to_i)
    end
end
