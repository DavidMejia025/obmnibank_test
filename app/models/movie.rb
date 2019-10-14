class Movie < ApplicationRecord
  has_one  :tech_description
  has_many :participants
  has_many :awards
  has_many :recomendations
  has_many :users, through: :movie_user_status
end
