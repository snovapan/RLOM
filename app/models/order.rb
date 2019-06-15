# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  user_id    :integer
#  quantity   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :item
  belongs_to :user
end
