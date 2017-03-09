require 'pry'
require 'nokogiri'
require 'date'


class Birthday
attr_accessor :flower_name, :url

BASE_PATH = "./fixtures/florist_site/birthday.html"
def initialize()
    display_deals(scraping_bouquets_info)
end

def scraping_bouquets_info
      doc = Nokogiri::HTML(open(BASE_PATH))
      welcome_text = doc.css('title').text.to_s
      #outofstock = doc.css('#cond_msg').text
      puts "you are in #{welcome_text} \n Would you like to see best deals as of #{Time.now.strftime("%d/%m/%Y %H:%M")} Plese Type Y/N
      "
      input = gets.chomp
      if input.upcase == "Y"
        todays_deals
      else
        puts "How can we help you?"
      end
end

def todays_deals
    doc = Nokogiri::HTML(open(BASE_PATH))
    all_deals = []
    doc.css(".product_row_cont").each{|bouquet|
    deals = {}
    deals[:flower] =  bouquet.css("img").attribute("title").value # scraping bouquet description
    deals[:price] =  bouquet.css(".price_span").first.text        # scraping price for the bouquet
    all_deals << deals
  }
    all_deals
end

def display_deals(deals)
    deals.each{|deal|
    puts "Bouquet Description :-" + deal[:flower]
    puts "Price :- " + deal[:price]
    puts "-------------------------------------------------------------"
    }
end

end
