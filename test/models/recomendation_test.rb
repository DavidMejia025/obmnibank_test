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

require 'test_helper'

class RecomendationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
