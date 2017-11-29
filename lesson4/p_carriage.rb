require_relative 'carriage.rb'
  class PassengerCarriage < Carriage
    attr_reader :type
    def initialize(number)
      super(number)
      @type = 'passenger'
    end
  end
