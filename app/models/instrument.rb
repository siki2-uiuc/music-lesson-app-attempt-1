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

  has_many :user_instruments

  has_many :users, through: :user_instruments, source: :musician
end
