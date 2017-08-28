#Dictionary hash to hold values
dial_book = {
    "New York" => "212",
    "Las Vegas" => "702",
    "Evansville" => "812",
    "Manassas" => "504",
    "Woodbridge" => "703",
}

#Method to display city names
def city(dial_book)
    puts "---Cities---"
    dial_book.each {|city, code| puts city}
end    
    
#method to get area code, dial_book and the city name
def area_code(choice, dial_book)
    puts "\nThe area code for #{choice} : #{dial_book[choice]}"
end

loop do
    puts "Do you want to lookup a city's area code? (Y/N)"
    
    answer = gets.chomp
    if answer.capitalize != 'Y'
        break
    end
    
    puts ""
    puts "The cities that are listed in the dictionary are."
    city(dial_book)
    

    puts "\nWhich city would you like to look up?"
    choice = gets.chomp
    choice.capitalize!
    
    if(dial_book.include?(choice))
      area_code(choice, dial_book)
  else
      puts"\nThe city #{choice} is not in the directory."
  end
end