require_relative 'train.rb'

  class PassengerTrain < Train
    attr_reader :type
    def initialize(number)
      super(number)
      @type = "passenger"
    end

    def add_carriage(c)
      @carriages.push(c) if c.type == @type && self.stopped?
    end

    def delete_carriage
      @carriages.delete_at(-1)
    end
  end
