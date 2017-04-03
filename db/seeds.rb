User.create!(name:  "Mudit Gupta",
             email: "muditgupta44@gmail.com",
             password:              "igivefuck@44",
             password_confirmation: "igivefuck@44",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@example.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
