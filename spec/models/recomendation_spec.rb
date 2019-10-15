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

require 'rails_helper'

RSpec.describe Recomendation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
