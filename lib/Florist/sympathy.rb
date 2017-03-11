
  require 'pry'
  require 'nokogiri'
  require 'date'

  class Sympathy

  BASE_PATH = "./fixtures/florist_site/sympathy.html"

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
        elsif input.upcase == "N"
          navigation
        end
  end

  def navigation
    puts "How can we help you ? Do you want to go back to the previous menu Y/N ?"
    input = gets.chomp
    if input.upcase == "Y"
      Florist::CLI.new.call
      exit
    else
     puts "Thanks for visiting Florist, we hope you enjoyed your time with us good bye"
     exit
    end
  end


  def todays_deals
      doc = Nokogiri::HTML(open(BASE_PATH))
      all_deals = []
      doc.css(".row_product").each{|bouquet|
      deals = {}
      deals[:flower] =  bouquet.css("img").attribute("title").value # scraping bouquet description
      deals[:price] =  bouquet.css(".price_span").first.text        # scraping price for the bouquet
      all_deals << deals
    }
      all_deals
  end

  def display_deals(deals)
      count = 0
      deals.each{|deal|
      puts "#{count} -Bouquet Description :-" + deal[:flower]
      puts "Price :- " + deal[:price]
      puts "-------------------------------------------------------------"
      count += 1
      }
  end

end
