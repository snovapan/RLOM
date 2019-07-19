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

  after_initialize :init
    def init
    self.picking_up_code ||= rand(1000..9999)
  end
end
