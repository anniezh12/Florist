module Scraper

  def scraping_bouquets_info(path)
        doc = Nokogiri::HTML(open(path))
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

end