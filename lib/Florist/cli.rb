require 'pry'

class Florist::CLI
 include Scraper
 include Displaybuy

  def call
    puts "Hi ,would you Like to see Todays best deals"
    ans = gets.chomp
    if (ans.upcase == "Y" || ans.upcase =="YES")
        todaydeals
    end

end
  def todaydeals
    puts "welcome, which one would you like to see Birthday(b)/Get Well(g)/Anniversary & Love(a)/Sympathy(s)"
    input = gets.chomp
    list_option(input) #will list  four options
  end

def list_option(input)

  case input.upcase
   when "B"
     scraping_bouquets_info(Birthday.path,Birthday) # calling Scraper.scraping_bouquets_info and passing Birthday class
     display_deals(Birthday.bouquets) #calling Displaybuy.display_deals and passing Birthday.bouquets
     Birthday.clear # clearing the bouquets array in Birthday empty
     when "G"
     scraping_bouquets_info(Getwell.path,Getwell) # creating an object of Birthday class
     display_deals(Getwell.bouquets)
   when "A"
     scraping_bouquets_info(Anniversary.path) # creating an object of Birthday class
     flowers = Anniversary.flowers
     display_deals(flowers)
   when "S"
     scraping_bouquets_info(Birthday.path) # creating an object of Birthday class
     flowers = Birthday.flowers
     display_flowers(flowers)
   when "EXIT"
      puts "Thanks for visiting our gem, have a great day"
      exit
    else
      puts " Please pick one of the given options or type exit to exit the application"
      input = gets.chomp
      list_option(input)
    end
  end

end
