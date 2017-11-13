require_relative 'p_train.rb'

class CargoTrain < PassengerTrain
  def initialize(number)
    super(number)
    @type = "cargo"
  end
end
