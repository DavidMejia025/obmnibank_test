# == Schema Information
#
# Table name: movie_statuses
#
#  id          :bigint           not null, primary key
#  movie_id    :integer
#  user_id     :integer
#  watch_later :boolean
#  watched     :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MovieStatus < ApplicationRecord
  belongs_to :user
  belongs_to :movie
end
