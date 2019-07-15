# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string
#  price       :string
#  stock       :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  history     :text
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
