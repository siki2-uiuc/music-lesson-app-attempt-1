# == Schema Information
#
# Table name: proficiency_levels
#
#  id          :bigint           not null, primary key
#  level       :string           default("beginner")
#  description :string           default("less than 1 year of experience")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ProficiencyLevel < ApplicationRecord

  enum level = { 
    beginner: "beginner", 
    novice: "novice", 
    intermediate: "intermediate", 
    proficient: "proficient", 
    professional: "professional" }
end
