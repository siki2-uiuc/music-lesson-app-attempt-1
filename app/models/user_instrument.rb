class UserInstrument < ApplicationRecord
  belongs_to :own_level, class_name: "ProficiencyLevel", foreign_key: "own_level_id"
  belongs_to :min_teaching_level, class_name: "ProficiencyLevel", foreign_key: "min_teaching_level_id"
  belongs_to :max_teaching_level, class_name: "ProficiencyLevel", foreign_key: "max_teaching_level_id"
  belongs_to :instrument
  belongs_to :musician, class_name: "User", foreign_key: "user_id"
end
