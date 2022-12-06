# == Schema Information
#
# Table name: user_instruments
#
#  id                    :bigint           not null, primary key
#  own_level_id          :bigint           not null
#  min_teaching_level_id :bigint
#  max_teaching_level_id :bigint
#  instrument_id         :bigint           not null
#  musician_id           :bigint           not null
#  years_played          :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class UserInstrument < ApplicationRecord
  


  belongs_to :own_level, class_name: "ProficiencyLevel", foreign_key: "own_level_id"
  belongs_to :min_teaching_level, class_name: "ProficiencyLevel", foreign_key: "min_teaching_level_id"
  belongs_to :max_teaching_level, class_name: "ProficiencyLevel", foreign_key: "max_teaching_level_id"
  belongs_to :instrument
  belongs_to :musician, class_name: "User", foreign_key: "user_id"
end
