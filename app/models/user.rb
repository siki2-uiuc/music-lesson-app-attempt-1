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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
         
  belongs_to :location

  has_many :musician_genres, dependent: :destroy
  has_many :testimonial_links

  has_many :user_instruments, foreign_key: "musician_id"
  has_many :genres, through: :musician_genres

  has_many :instruments, through: :user_instruments, source: :instrument, dependent: :destroy
end
