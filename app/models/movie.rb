# == Schema Information
#
# Table name: movies
#
#  id           :bigint           not null, primary key
#  name         :string
#  country      :string
#  genres       :string
#  release      :date
#  score        :integer
#  duration_min :integer
#  image        :string
#  synopsis     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Movie < ApplicationRecord
  has_one  :movie_status
  has_many :recomendations
  has_many :users, through: :recomendations

  validates :name, :synopsis, presence: true
end
