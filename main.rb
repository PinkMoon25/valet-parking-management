require_relative 'app'
require_relative 'parking'

def main
  puts 'welcome to Valet parking management'
  puts "\n"
  puts " please enter the parking spots available \n"
  puts "\n"
  puts ' Enter number of small space: '
  small = gets.chomp.to_i
  puts ' Enter number of medium space: '
  medium = gets.chomp.to_i
  puts ' Enter number of large space: '
  large = gets.chomp.to_i

  parking_garage = ParkingGarage.new(small, medium, large)
  loop do
    app = App.new(parking_garage)
    app.run
  end
end

main
