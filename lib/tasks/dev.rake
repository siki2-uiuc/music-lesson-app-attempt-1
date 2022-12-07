task sample_data: :environment do
  p "Creating sample data"

  # Creating Locations sample data

  locations = ["Downers Grove", "Naperville", "Chicago", "Bolingbrook", "Woodridge"]

  locations.each do |location|
    Location.create(
      location_name: location
    )
  end


  # Creating Users sample data

  usernames = Array.new

  5.times do
    usernames.push(Faker::Name.first_name.downcase)
  end
  usernames << "alice"
  usernames << "bob"
  
  usernames.each do |username|
    User.create(
      email: "#{username}@example.com",
      username: username.downcase,
      password: "password",
      location_id: Location.id.sample,
      teacher_bio: Faker::Lorem.paragraph,
      lesson_schedule: ["Mon-Fri", "Mon, Wed, Fri", "Sat-Sun"].sample,
      years_teached: [3, 4, 5, 8, 10, 12].sample,
      avatar_url: "https://robohash.org/#{rand(9999)}",
      lesson_pricing: [15.00, 20.00, 25.00, 30.00].sample
    )
  end

  p "#{User.count} users have been created"

  users = User.all

  # Creating Musician Genre sample data
  

  
end
