require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('sweeper', '0.1.0') do |p|
  p.description    = "Cleans up application by removing unused images."
  p.url            = "http://github.com/anilg/sweeper"
  p.author         = "Anil Galve"
  p.email          = "galve.anil@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
