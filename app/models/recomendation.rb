# == Schema Information
#
# Table name: recomendations
#
#  id          :bigint           not null, primary key
#  movie_id    :integer
#  user_id     :integer
#  title       :string
#  description :text
#  likes       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recomendation < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :title, :description, presence: true
end
