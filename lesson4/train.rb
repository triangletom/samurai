  class Train
    attr_reader :number

    def initialize(number)
      @carriages = []
      @number = number
      @speed = 0
    end

    def speed_up(value=10)
      @speed += value
    end

    def stop
      @speed = 0
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

    protected

    def stopped?
      @speed == 0
    end
  end
