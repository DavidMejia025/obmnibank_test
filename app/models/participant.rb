class Participant < ApplicationRecord
  has_many :movies
  has_many :awards
end
