User.create!(name:  'Example User',
            email: 'lamvd@gmail.com',
            password:              '123123',
            password_confirmation: '123123',
            admin: true,
            activated: true,
            activated_at: Time.zone.now)

# Generate a bunch of additional users.
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = 'password'
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end
# Generate microposts for a subset of users.
users = User.order(:created_at).take(6)
 25.times do 
  content = Faker::Lorem.sentence(word_count: 5)
  users.each do |user|
    user.microposts.create!(content: content)
  end
end

  # Create following relationships.
  users = User.all
  user = users.first
  following = users[2..25]
  followers = users[3..20]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }
puts "Done!!!"