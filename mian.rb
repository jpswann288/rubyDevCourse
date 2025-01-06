dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(dial_book)
  puts dial_book.keys
end
 
# Get area code based on given hash and key
def get_area_code(dial_book, key)
  dial_book.include?(key) ? puts("The area code for #{key} is #{dial_book[key]}") : puts("City not found")
end
 
# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  input = gets.chomp.downcase
  break if input != 'y' 
  get_city_names(dial_book)
  puts "Enter your selection"
  key = gets.chomp.downcase
  get_area_code(dial_book, key)
end