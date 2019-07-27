# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  item_id         :integer
#  user_id         :integer
#  quantity        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  picking_up_code :string
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
