require 'open-uri'
require 'pry'
#require_relative 'bday'

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
      bday =  Birthday.new # creating an object of Birthday class
    when "G"
      puts  "anniversary"
    # get_well =  Getwell.new # creating an object of Getwell class
    when "A"
      puts  "anniversary"
      # anniver =  Anniversary.new # creating an object of Anniversary class
    when "S"
      puts "sympathy"
      # sym =  Sympathy.new # creating an object of Sympathy class
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
