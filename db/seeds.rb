# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProficiencyLevel.create(level: "beginner", description: "less than 1 year of experience")
ProficiencyLevel.create(level: "novice", description: "1-2 years of experience")
ProficiencyLevel.create(level: "intermediate", description: "3-5 years of experience")
ProficiencyLevel.create(level: "proficient", description: "6-9 years of experience")
ProficiencyLevel.create(level: "professional", description: "10+ years of experience")

musical_genres = ["Blues", "Classical", "Country", "Dance/Electronic", "Folk/Acoustic", "Gospel", "Hip-Hop/Rap", "Jazz", "Latin", "Metal", "Pop", "R&B/Soul", "Rock", "World"]

musical_genres.each do |genre|
  Genre.create(name: genre)
end
