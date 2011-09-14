# Author Anil
# Task to remove unused images
namespace :asset_sweeper do
  task :sweep => :environment do
    require "fileutils"
    img=Dir.glob("**/public/images/**/*.jpg")+Dir.glob("**/public/images/**/*.png")+Dir.glob("**/public/images/**/*.gif")
    data=Dir.glob("**/*.htm*")+Dir.glob("**/*.css")+Dir.glob("**/*.js")
    puts img.length.to_s+" images found & "+data.length.to_s+" files found to search against"
    content=""
    data.each do |f|
      content+=File.open(f, 'r').read
    end
    img.each do |m|
      if not content=~ Regexp.new("\\b"+File.basename(m)+"\\b")
        FileUtils.mkdir_p "unused/"+File.dirname(m)
        FileUtils.mv m,"unused/"+m
        puts "Image "+m+" moved to unused/"+File.dirname(m)+" folder"
      end
    end
  end
end
