class Movie < ApplicationRecord
  has_one  :movie_status
  has_many :recomendations
  has_many :users, through: :recomendations
end
