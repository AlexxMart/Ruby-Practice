users = [
  {username: "arya", password: "password1"},
  {username: "jon", password: "password2" },
  {username: "sansa", password: "password3"},
  {username: "daenery", password: "password4"}
]

def auth_user(username, password, users_list)
  users_list.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  "Credentials are not correct"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will require you to enter the correct username and password"
puts "If the information entered is correct you will receive the user object back"

attemps = 1

while attemps < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  attemps += 1
end