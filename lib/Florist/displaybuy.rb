module Displaybuy

def display_deals(deals)
    count = 1
    deals.each{|deal|
    puts "#{count} -Bouquet Description :-" + deal[:flower]
    puts "Price :- " + deal[:price]
    puts "-------------------------------------------------------------"
    count += 1
    }
    buy
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
