class Station
  attr_accessor :name
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

class Route
  attr_reader :stations

  def initialize(departure, arrival)
    @stations = [departure, arrival]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end
end

class Train
  attr_reader :number, :type

  def initialize(number, type, carriages)
    @number = number
    @type = type
    @carriages = carriages
    @speed = 0
  end

  def speed_up(value)
    @speed += value
  end

  def stop
    @speed = 0
  end

  def stopped?
    @speed == 0
  end

  def add_carriage
      @carriages +=1 if stopped?
  end

  def delete_carriage
      @carriages -=1 if stopped? && @carriages > 0
  end

  def take_route(route)
    @route = route
    @station_index = 0 #index for moving between stations
    current_station.arriving(self)
  end

  def move_forward
    return unless next_station
    current_station.departing(self)
    @station_index +=1
    current_station.arriving(self)
  end

  def move_back
    return unless previous_station
    current_station.departing(self)
    @station_index -=1
    current_station.arriving(self)
  end

  def next_station
    return unless current_station != @route.stations.last
    @route.stations[@station_index + 1]
  end

  def current_station
    @route.stations[@station_index]
  end

  def previous_station
    return unless current_station != @route.stations.first
    @route.stations[@station_index - 1]
  end
end
