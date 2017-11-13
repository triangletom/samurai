  class Route
    attr_reader :stations
    attr_accessor :route_id

    def initialize(departure, arrival)
      @route_id = "#{departure.name}-#{arrival.name}"
      @stations = [departure, arrival]
    end

    def add_station(station)
      @stations.insert(-2, station)
    end

    def delete_station(station)
      @stations.delete(station)
    end
  end
