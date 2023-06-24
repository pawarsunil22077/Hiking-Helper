# ======================================
# Hiking Helper
# ======================================

# require gems
require 'csv'
require 'colorize'
require 'artii'

# set constant 
Miles_per_hour = 2.5

# set methods
# method to convert feet / mile to meters / kilometer
def convert_to_metric(feet)
  meters = feet * 0.3048
  kilometers = meters / 1000
  # return results
  return meters, kilometers
end

# method to determine travel time
def get_travel_time(miles)
  total_hours = (miles / Miles_per_hour).round(2)
  hours = total_hours.floor
  minutes = ((total_hours - hours) * 60).round(0)
  # return results
  return hours, minutes
end

# Display welcome message
Artii::Base.new 
puts Artii::Base.new.asciify('Hiking Helper').colorize(:green)
puts "\nWelcome to the Hiking Helper program!"

# get hike info
print "What is the name of the hike? "
hike_name = gets.chomp
puts ""

print "How long is the hike (in miles)? "
hike_miles = gets.chomp.to_f
puts ""

# convert to metric
feet = hike_miles * 5280
meters, kilometers = convert_to_metric(feet)

# calculate travel time
hours, minutes = get_travel_time(hike_miles)

# output results to the console
puts "Hike Name: #{hike_name}".colorize(:green)
puts "Miles: #{hike_miles}".colorize(:green)
puts "Feet: #{feet.round(0)}".colorize(:green)
puts "Meters: #{meters.round(0)}".colorize(:green)
puts "Kilometers: #{kilometers.round(2)}".colorize(:green)
puts "Travel Time: #{hours} hrs, #{minutes} mins".colorize(:green)

# store hike info in csv file
CSV.open("hikes.csv", "a+") do |csv|
  csv << [hike_name, hike_miles, feet.round(0), meters.round(0), kilometers.round(2), hours, minutes]
end