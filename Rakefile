require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('asset_sweeper', '0.2.0') do |p|
  p.description    = "This gem is for cleaning up rails application by removing unused images, listing unused stylesheets and javascripts from application also with help of this you can list down missing images called from stylesheets which causes page loading slower."
  p.url            = "http://github.com/anilg/asset_sweeper"
  p.author         = "Anil Galve"
  p.email          = "galve.anil@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
