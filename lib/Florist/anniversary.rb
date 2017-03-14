  require 'pry'
  require 'nokogiri'
  require 'date'
  require 'open-uri'

class Anniversary
  attr_accessor :all
  include Displaybuy
  include Scraper

  BASE_PATH = 'https://www.florist.com/80527/catalog/category.epl?index_id=occasion_anniversary&intcid=anniversaryandlove_Flash'

  def initialize
       display_deals(scraping_bouquets_info(BASE_PATH))
  end

  end
