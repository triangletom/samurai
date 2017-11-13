  class Station
    attr_reader :name
    attr_reader :trains

    def initialize(name)
      @name = name
      @trains = []
    end

    def arriving(train)
      @trains << train
    end

    def trains_by_type(type)
      @trains.select { |train| train.type == type }
    end

    def departing(train)
      @trains.delete(train)
    end
  end
