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

require 'rails_helper'

RSpec.describe MovieStatus, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
