User.create!(name:  'Example User',
             email: 'lamvd@gmail.com',
             password:              '123123',
             password_confirmation: '123123',
             admin: true )

# Generate a bunch of additional users.
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = 'password'
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end