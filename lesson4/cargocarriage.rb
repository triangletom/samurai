require_relative 'carriage.rb'
  class CargoCarriage < Carriage
    attr_reader :type
    def initialize(number)
      super(number)
      @type = 'cargo'
    end
  end
