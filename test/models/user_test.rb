# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :citext           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  location_id            :integer
#  teacher_bio            :text
#  lesson_schedule        :text
#  years_teached          :integer          default(0)
#  avatar_url             :string
#  lesson_pricing         :float
#  student_bio            :text
#  username               :citext
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
