class App
  def initialize(parking_garage)
    @parking_garage = parking_garage
  end

  def run
    puts 'Please choose an option by entering a number'
    puts ' 1 - Park a car'
    puts ' 2 - Exit a car'
    puts ' 0 - Exit app'

    option = gets.chomp.to_i
    case option
    when 1
      puts ' Enter car license plate number: '
      license_plate_no = gets.chomp.to_i
      puts ' Enter Car size (Small, Medium or Large): '
      size = gets.chomp.to_s.downcase
      @parking_garage.admit_car(license_plate_no, size)
    when 2
      puts ' Enter car license plate number: '
      license_plate = gets.chomp.to_i
      @parking_garage.exit_car(license_plate)
    when 0
      abort 'Thank you for using the app!'
    else
      puts "Invalid entry #{option}"
    end
  end
end
