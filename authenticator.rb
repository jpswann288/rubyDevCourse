users = [
  { username: "jason", password: "password1" },
  { username: "coya", password: "password2" }
]

def authUser(username, password, listOfUsers)
  listOfUsers.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  return "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If the password is correct, you will get back the user object"

attempts = 0
while attempts < 3
  print "Username: "
  username = gets.chomp!
  print "Password: "
  password = gets.chomp!
  auth = authUser(username, password, users)
  puts auth
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end

puts "You have exceeded the number of attempts"