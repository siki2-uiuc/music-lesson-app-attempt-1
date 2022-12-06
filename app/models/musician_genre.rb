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
class MusicianGenre < ApplicationRecord
  belongs_to :user
  belongs_to :genre
end
