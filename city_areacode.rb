# ruby to get area code of city 
dial_book = {
  "sanjose" => "408", 
  "sanfrancisco" => "415", 
  "menlopark" => "650", 
  "fremont" => "510", 
  "losangeles" => "310",
  "newyork" => "212",
  "sacramento" => "916",
  "sandiego" => "909",
  "seattle" => "424",
  "phoenix" => "602"
} 

def get_area_code(dial_book,city)
  dial_book[city]
end

def display_cities(dial_book)
  dial_book.each {|key, value| puts key}
end

# loop until answer is not y
loop do 
  print "Do you want to lookup a city name? (y/n)"
  answer = gets.chomp
  if answer != "y"
    break;
  else
    puts "Choose a city from the following:"
    display_cities(dial_book)
    city = gets.chomp
    
    # no error checking for non existing city
    puts "#{city} area code is:" + get_area_code(dial_book,city)
    
  end # end if
end # end loop do



