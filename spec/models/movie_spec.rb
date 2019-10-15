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

require 'rails_helper'

RSpec.describe Movie, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
