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

# loop until answer is not y
loop do 
  print "Do you want to lookup a city name? (y/n)"
  answer = gets.chomp
  if answer != "y"
    break;
  else
    puts "Choose a city from the following:"
    dial_book.each do |key, value|
      puts key
    end # end each 
    city = gets.chomp
    
    puts dial_book[city]
    
    puts "area code is: #{dial_book[city]}"
    
  end # end if
end # end loop do



