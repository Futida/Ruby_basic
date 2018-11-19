class RealItem < Item

    attr_accessor :weight

    def initialize(config)
      @weight = config[:weight]
      super
    end

    def info
        yield weight
        super
    end

end