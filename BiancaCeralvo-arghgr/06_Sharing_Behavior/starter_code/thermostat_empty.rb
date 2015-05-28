require 'pry'
require 'pry-byebug'

class Thermostat

  attr_accessor :temperature

  #instance factory!!!
  def initialize(temperature)
    @temperature = temperature
  end

  #instance method
  def get_desired_temperature(target_temp)
    # puts "Hello, my temperature is #{temperature}. The target temp is #{target_temp}"
    if @temperature >= target_temp
      puts "My temperature is #{@temperature}. Hurray!"
    else
      puts "My temperature is #{@temperature}. Boo!!!!!!"
    end
  end
  ####

  #class method
  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |reading|
      r = Thermostat.new(reading)
      # puts "This is an instance of Thermostat with reading: #{r.temperature}"
      r.get_desired_temperature(target_temp)
    end
  end

 private

  def turn_on_heater(temperature)
  end

  def turn_off_heater(temperature)
  end

end


#Temperatures are being read externally somewhere, so let's just create an array of those readings and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]

#set by user
target_temp = 75

#class method called to get this party started!!!
Thermostat.detect_temperature(all_temps, target_temp)
