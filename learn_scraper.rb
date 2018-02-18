require 'nokogiri'
require 'pry'
require 'open-uri'

def create_curriculum_hash
  html = open('https://learn.co/tracks/full-stack-web-development-v3/object-oriented-ruby/scraping/kickstarter-scraping-lab')
  binding.pry

  learn = Nokogiri::HTML(html)

  lessons = {}

  #Iterate through the projects
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta li a span").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
  end
  projects
end

create_curriculum_hash
