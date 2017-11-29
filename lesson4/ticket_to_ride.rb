require_relative "train.rb"
require_relative "station.rb"
require_relative "route.rb"
require_relative "cargotrain.rb"
require_relative "p_train.rb"
require_relative "cargocarriage.rb"
require_relative "p_carriage.rb"
require_relative "carriage.rb"
class TrainContol

  @@all_trains = []
  @@all_routes = []
  @@all_stations = []

def ticket_to_ride
  puts "Welcome to train control program!"
  loop do
  program_menu
  puts "Print number of action:"
  user_input = gets.chomp.to_i
    case user_input
      when 1  then create_station
      when 2  then create_train
      when 3  then create_route
      when 4  then assign_route
      when 5  then add_carriage_to_train
      when 6  then delete_carriage
      when 7  then moves_train
      when 8  then list_stations
      when 9  then add_to_route
      when 10 then delete_from_route
      when 11 then break
    end
  end
end

protected

def program_menu
puts "-------------------------"
puts "Please, choose the action:"
puts "1. Create station"
puts "2. Create train"
puts "3. Create route(add/delete station from route)"
puts "4. Assign route to train"
puts "5. Add carriage to train"
puts "6. Delete carriage from train"
puts "7. Move train beyound stations"
puts "8. Print list of stations and trains on them"
puts "9. Add station to route"
puts "10. Delete station from route"
puts "11. Exit"
puts "-------------------------"
end

def create_station
  puts "Name of station?"
  name = gets.chomp
  @@all_stations.push Station.new(name)
end

def create_train
  puts "Number of train?"
  number = gets.chomp.to_s
  puts "1 for Passenger, 2 for Cargo."
  user_input = gets.chomp.to_i
    case user_input
    when 1 then @@all_trains << PassengerTrain.new(number)
    when 2 then @@all_trains << CargoTrain.new(number)
    end
end

def create_route
  first_station = select_station
  last_station = select_station
  @@all_routes << Route.new(first_station, last_station)
end

def add_to_route
  selected_station = select_station
  select_route.add_station(selected_station)
end

def delete_from_route
  selected_station = select_station
  select_route.add_station(selected_station)
end

def assign_route
  train = select_train
  route = select_route
  train.take_route(route)
end

def add_carriage_to_train
  train_by_type = select_train
  puts "Number of carriage to create?"
  number = gets.chomp.to_s
  case train_by_type.type
  when "passenger" then train_by_type.add_carriage(PassengerCarriage.new(number))
  when "cargo" then train_by_type.add_carriage(CargoCarriage.new(number))
  end
end

def delete_carriage
  selected_train = select_train
  selected_train.delete_carriage(select_carriage(selected_train))
end

def moves_train
  selected_train = select_train
  puts "1 for move forward; 2 for backward."
  direction = gets.chomp.to_i
  case direction
  when 1 then selected_train.move_forward
  when 2 then selected_train.move_back
  end
end

def list_stations
  @@all_stations.each.with_index(1) do |station, x|
    puts "#{x}. #{station.name}, trains: #{station.trains}"
  end
end

def select_train
  puts "Number of train?"
  number = gets.chomp.to_s
  @@all_trains.select {|train| train.number.to_s == number}[0]
end

def select_carriage(train)
  puts "Number of carriage?"
  number = gets.chomp.to_s
  train.carriages.select {|carriage| carriage.number.to_s == number}[0]
end

def select_route
  puts "Route id?"
  route_id = gets.chomp.to_s
  @@all_routes.select {|route| route.route_id.to_s == route_id}[0]
end

def select_station
  puts "Name of station?"
  name = gets.chomp.to_s
  @@all_stations.select {|station| station.name.to_s == name}[0]
end

end

start_programm = TrainContol.new
start_programm.ticket_to_ride
