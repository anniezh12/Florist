require 'pry'
require 'nokogiri'
require 'date'


class Birthday
attr_accessor :flower_name,:price, :url
@@all = []
BASE_PATH = "./fixtures/florist_site/birthday.html"
def initialize()
  #@url = BASE_PATH
  #binding.pry
  scraping_flower_name
end

def scraping_flower_name
  deals = []
  doc = Nokogiri::HTML(open(BASE_PATH))
  welcome_text = doc.css('title').text.to_s
  #outofstock = doc.css('#cond_msg').text

  puts "you are in #{welcome_text} \n Would you like to see best deals as of #{Time.now.strftime("%d/%m/%Y %H:%M")} Plese Type Y/N
  \n******************************************************************************"
  input = gets.chomp
  if input.upcase == "Y"
    todays_deals
  else
    puts "How can we help you?"
  end
end

def todays_deals
#scrape from url
deals = []
doc = Nokogiri::HTML(open(BASE_PATH))
doc.css(".product_row_cont").each{|e| puts e.text.gsub(/\n+/, " \n")
puts "\n******************************************************************************"}

end

def self.all
  @all
end


end
