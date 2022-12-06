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
require "test_helper"

class UserInstrumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
