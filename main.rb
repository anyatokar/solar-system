require_relative 'planet'
require_relative 'solar_system'

def birth_of_solar_system
  solar_system = SolarSystem.new('Solar System')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 150.11, 'is the only planet known to support life')
  venus = Planet.new('Venus', 'grey', 4.868e24, 107.85, 'spins in the opposite direction to most planets')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4476.3, 'orbits the sun every 165 years')

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(neptune)

  return solar_system
end

def main
  solar_system = birth_of_solar_system
  puts "Welcome to Anya's Solar System assignment!"
  while true
    puts "\n**********************************************"
    print "\nWhat would you like to do next? (options: list planets, planet details, add planet, or exit): "
    user_input = gets.chomp
    case user_input
    when "list planets"
      list = solar_system.list_planets
      print list
    when "planet details"
      planet_details = solar_system.planet_details_helper
      print planet_details
    when "add planet"
      planet_details = solar_system.get_users_planet
      print planet_details
    when "exit"
      return false
    else
      # raise ArgumentError.new("Didn't choose valid option (entered #{user_input})")
      puts "Didn't choose valid option (entered: #{user_input})"
    end
  end
end

main