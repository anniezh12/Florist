require 'open-uri'
require 'pry'

class Florist::CLI

  def call
    puts "Hi ,would you Like to see Todays best deals"
    ans = gets.chomp
    if (ans.upcase == "Y" || ans.upcase =="YES")
        weekdeals
    end
end

  def weekdeals
    puts "welcome, which one would you like to see Birthday(b)/Get Well(g)/Anniversary & Love(as)/Sympathy(s)"
    input = gets.chomp
    list_option(input) #will list  four options
  end

def list_option(input)

  case input.upcase
   when "B"
     Birthday.new # creating an object of Birthday class
   when "G"
     Getwell.new # creating an object of Getwell class
   when "A"
     Anniversary.new # creating an object of Anniversary class
   when "S"
     Sympathy.new # creating an object of Sympathy class
     puts"+++++++++++++++++++++"
     Sympathy.helper
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
