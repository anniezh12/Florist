
  require 'pry'
  require 'nokogiri'
  require 'date'
  require 'open-uri'

  class Getwell
    attr_accessor :all
   include Displaybuy # has two functions display and buy
   include Scraper  # has functions today_deals,scraping_bouquets_info and navigation

   BASE_PATH = 'https://www.florist.com/80527/catalog/category.epl?index_id=occasion_getwell&intcid=getwell_Flash'

  def initialize()
      display_deals(scraping_bouquets_info(BASE_PATH))
  end

  end
