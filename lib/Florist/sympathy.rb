
  require 'pry'
  require 'nokogiri'
  require 'date'
  require 'open-uri'

  class Sympathy

   attr_accessor :all
   include Displaybuy,Scraper
   BASE_PATH = 'https://www.florist.com/80527/catalog/category.epl?index_id=occasion_sympathy&intcid=sympathy_Flash'

  def initialize()
      display_deals(scraping_bouquets_info(BASE_PATH))
  end

  def todays_deals
      doc = Nokogiri::HTML(open(BASE_PATH))
      @all = []
      doc.css(".row_product").each{|bouquet|
      deals = {}
      deals[:flower] =  bouquet.css("img").attribute("title").value # scraping bouquet description
      deals[:price] =  bouquet.css(".price_span").first.text        # scraping price for the bouquet
      @all << deals
    }
      @all
  end

end
