class Award < ApplicationRecord
  belongs_to :movie
  belongs_to :participant
end
