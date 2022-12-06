# == Schema Information
#
# Table name: musician_genres
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  genre_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class MusicianGenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
