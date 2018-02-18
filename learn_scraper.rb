require 'nokogiri'
require 'pry'
require 'open-uri'

def create_curriculum_hash
  html = File.read('./fixtures/Learn.html')
  learn = Nokogiri::HTML(html)

  binding.pry

  lessons = {}

  #Iterate through the projects
=begin
  lessons.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta li a span").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
  end
  projects
=end
end

#create_curriculum_hash

##js--region-track-nav > div > div > span > div
