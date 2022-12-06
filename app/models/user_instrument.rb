class UserInstrument < ApplicationRecord
  belongs_to :own_level
  belongs_to :min_teaching_level
  belongs_to :max_teaching_level
  belongs_to :instrument
  belongs_to :musician
end
