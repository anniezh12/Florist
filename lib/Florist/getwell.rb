
  require 'pry'
  require 'nokogiri'
  require 'date'
  require 'open-uri'

  class Getwell
    attr_accessor :flower, :price
   include Displaybuy # has two functions display and buy
   include Scraper  # has two functions scraping_bouquets_info and navigation

@@base_path = 'https://www.florist.com/80527/catalog/category.epl?index_id=occasion_getwell&intcid=getwell_Flash'
@@bouquets = []
  def initialize(price,flower)
      @flower = flower
      @price = price
      @@bouquets << self
  end

  def self.path
    @@base_path
  end

  def self.bouguets
    @@bouquets
  end

  def self.clear
    @@bouquets.clear
  end

  end
