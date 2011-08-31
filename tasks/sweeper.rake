# Author Anil
# Task to remove unwanted images
namespace :sweeper do
  task :sweep => :environment do
    require "fileutils"
    img=Dir.glob("**/*.jpg")+Dir.glob("**/*.png")+Dir.glob("**/*.gif")
    data=Dir.glob("**/*.htm*")+Dir.glob("**/*.css")+Dir.glob("**/*.js")
    puts img.length.to_s+" images found & "+data.length.to_s+" files found to search against"
    content=""
    data.each do |f|
      content+=File.open(f, 'r').read
    end
    img.each do |m|
      if not content=~ Regexp.new("\\b"+File.basename(m)+"\\b")
        FileUtils.mkdir_p "unused/"+File.dirname(m)
        FileUtils.cp m,"unused/"+m
        puts "Image "+m+" moved to unused/"+File.dirname(m)+" folder"
      end
    end
  end
end
