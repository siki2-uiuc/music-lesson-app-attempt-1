task sample_data: :environment do
  p "Creating sample data"

  5.times do
    p Faker::Name.first_name
  end
end
