users = [
  { username: "nick", password: "password1" },
  { username: "anna", password: "password2" },
  { username: "stanis", password: "password3" },
  { username: "tryarch", password: "password4" },
  { username: "magi", password: "password5" },
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare a password"
puts "If the password is correct, you get receive the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the nnumber of attempts" if attempts == 4