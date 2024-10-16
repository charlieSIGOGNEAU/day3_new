require 'bundler'
Bundler.require
# require 'lib/scrapper'
$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/scrapper' #plus besoin de préciser le path exact
require 'views/index'

Index.new.perform
# Scrapper.new



# require 'json'    car indiquer dans le gemfile et donc le require et fait par la ligne 1 et 2

# puts "Current directory: #{Dir.pwd}"
# person = { name: "Alice", age: 30 }
# json_data = person.to_json
# File.open("person.json", "w") do |f|
#   f.write(json_data)
# end


