class Anniversary
  attr_accessor :flower, :price
  include Displaybuy
  include Scraper

  @@base_path = 'https://www.florist.com/80527/catalog/category.epl?index_id=occasion_anniversary&intcid=anniversaryandlove_Flash'
  @@bouquets = []

  def initialize(price,flower)
    @flower = flower
    @price = price
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
