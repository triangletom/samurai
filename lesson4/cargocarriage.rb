require_relative 'p_carriage.rb'
  class CargoCarriage < PassengerCarriage
    def initialize
      @type = 'cargo'
    end
  end
