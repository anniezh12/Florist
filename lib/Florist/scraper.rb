module Scraper

  def scraping_bouquets_info(path,provided_class)
        doc = Nokogiri::HTML(open(path))
        welcome_text = doc.css('title').text.to_s
        #outofstock = doc.css('#cond_msg').text
        puts "you are in #{welcome_text} \n Would you like to see best deals as of #{Time.now.strftime("%d/%m/%Y %H:%M")} Plese Type Y/N
        "
        input = gets.chomp
        if input.upcase == "Y"
          todays_deals(path,provided_class)
        elsif input.upcase == "N"
          navigation
        end
  end

  def todays_deals(path,provided_class)

      doc = Nokogiri::HTML(open(path))
      doc.css(".row_product").each{|bouquet|
      flower =  bouquet.css("img").attribute("title").value # scraping bouquet description
      price =  bouquet.css(".price_span").first.text        # scraping price for the bouquet
      provided_class.new(price,flower) # creatingan object of the provided class
    }

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
