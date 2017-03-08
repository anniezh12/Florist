#instructor corinna@flatironschool.com
require 'nokogiri'
require 'open-uri'
require 'pry'
#require_relative 'bday'

class Florist::CLI

  def call
    puts "Hi ,would you Like to see Todays best deals"
    ans = gets.chomp
    if (ans.upcase == "Y" || ans.upcase =="YES")
      #puts "good"
    #binding.pry
    #  weekdeals(BASE_PATH + 'first_page.html')
    weekdeals
    end
end

  def weekdeals
    #doc = Nokogiri::HTML(open(web_url))
    puts "welcome, which one would you like to see Birthday(b)/Get Well(g)/Anniversary & Love(as)/Sympathy(s)"
    input = gets.chomp
    list_option(input) #will list  four options
  end

def list_option(input)

  case input.upcase
    when "B"
      #assign the bday page to web_url
      bday =  Birthday.new
      #puts bday.all
    when "G"
      puts "GET wll"
    when "A"
      puts  "anniversary"
    when "S"
      puts "sympathy"
    when "EXIT"
      puts "Thanks for visiting our gem, have a great day"
      exit
    else
      puts " Please pick one of given option or type exit to exit the application"
      input = gets.chomp
      list_option(input)
    end

  end

  def Today_deals

  end
end
