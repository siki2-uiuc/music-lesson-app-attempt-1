# == Schema Information
#
# Table name: testimonial_links
#
#  id         :bigint           not null, primary key
#  link_url   :string
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TestimonialLink < ApplicationRecord
  validates :link_url, presence: true
  
  belongs_to :user
end
