require 'pry'
require 'nokogiri'
require 'date'
require 'open-uri'

class Birthday
  attr_accessor  :price, :flower
  include Displaybuy
  include Scraper

@@base_path = "https://www.florist.com/80527/catalog/category.epl?index_id=occasion_birthday&intcid=Bday_Flash"
@@bouquets = []
def initialize(price, flower)
      @price = price
      @flower = flower
      @@bouquets << self

end

def self.path
@@base_path
end

def self.bouquets
  @@bouquets
end

def self.clear
  @@bouquets.clear
end

end
