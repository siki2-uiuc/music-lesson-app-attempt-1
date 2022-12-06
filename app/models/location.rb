# == Schema Information
#
# Table name: locations
#
#  id            :bigint           not null, primary key
#  location_name :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Location < ApplicationRecord

  has_many :users
end
