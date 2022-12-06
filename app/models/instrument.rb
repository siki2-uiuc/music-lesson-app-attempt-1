# == Schema Information
#
# Table name: instruments
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Instrument < ApplicationRecord
  validates :name, presence: true

  has_many :users, class_name: "UserInstrument", foreign_key: "instrument_id"
end
