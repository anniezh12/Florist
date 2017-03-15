module Displaybuy

def display_deals(deals)
    #binding.pry
    deals.each.with_index(1) {|deal,index|
    puts "#{index} -Bouquet Description :-#{deal.flower}"
    puts "Price :- #{deal.price}"
    puts "-------------------------------------------------------------"

    }
    #buy
end

def buy
  puts "Which one you want to buy please provide number ?"
  input = gets.chomp
  if input.to_i < @all.length && input.to_i >= 0
    puts "\n#{@all[input.to_i-1][:flower].gsub(" by FTD® - 36 Stems - VASE INCLUDED ","")} will be delivered soon Please pay #{@all[input.to_i-1][:price]}"
  else
    puts "Please Provide number from the available options"
    buy
  end
end

end
