task sample_data: :environment do
  p "Creating sample data"

  # Creating Locations sample data

  # locations = ["Downers Grove", "Naperville", "Chicago", "Bolingbrook", "Woodridge"]

  # locations.each do |location|
  #   Location.create(
  #     location_name: location
  #   )
  # end


  # Creating Users sample data

  # usernames = Array.new

  # 5.times do
  #   usernames.push(Faker::Name.first_name.downcase)
  # end
  # usernames << "alice"
  # usernames << "bob"
  
  # usernames.each do |username|
  #   User.create(
  #     email: "#{username}@example.com",
  #     username: username.downcase,
  #     password: "password",
  #     location_id: Location.all.sample.id,
  #     teacher_bio: Faker::Lorem.paragraph,
  #     lesson_schedule: ["Mon-Fri", "Mon, Wed, Fri", "Sat-Sun"].sample,
  #     years_teached: [3, 4, 5, 8, 10, 12].sample,
  #     avatar_url: "https://robohash.org/#{rand(9999)}",
  #     lesson_pricing: [15.00, 20.00, 25.00, 30.00].sample
  #   )
  # end

  # p "#{User.count} users have been created"

  users = User.all

  # Creating Musician Genre sample data
  # users.each do |user|
  #   rand(1..2).times do
  #     user.musician_genres.create(
  #       user_id: user.id,
  #       genre_id: Genre.all.sample.id
  #     )
  #   end
    # MusicianGenre.create(
    #   user_id: user.id,
    #   genre_id: Genre.genre_id.sample
    # )
  # end

  #Creating User Instrument sample data
  users.each do |user|
    UserInstrument.create!(
      own_level_id: ProficiencyLevel.last.id,
      min_teaching_level_id: ProficiencyLevel.first.id,
      max_teaching_level_id: ProficiencyLevel.all.sample.id,
      instrument_id: Instrument.all.sample.id,
      musician_id: user.id,
      years_played: rand(9) + 8
    )
  end

  #Creating Testimonial Links sample data
  # testimonial_links = [
  #   "https://youtu.be/bvWRMAU6V-c",
  #   "https://youtu.be/BxmSOTHVE8g",
  #   "https://youtu.be/t7PhdiHItjw",
  #   "https://youtu.be/25QyCxVkXwQ",
  #   "https://youtu.be/6BH-Rxd-NBo",
  #   "https://youtu.be/DQQRjFzB8gY",
  #   "https://youtu.be/GibiNy4d4gc"
  # ]
  # users.each do |user|
  #   rand(2).times do
  #     user.testimonial_links.create(
  #       user_id: user.id,
  #       link_url: testimonial_links.sample
  #     )
  #   end
  # end

  p "#{Location.count} locations have been created"
  p "#{User.count} users have been created"
  p "#{MusicianGenre.count} musician genres have been created"
  p "#{UserInstrument.count} musician instruments have been created"
  p "#{TestimonialLink.count} testimonial links have been created"

end
