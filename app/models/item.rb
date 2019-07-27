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
#  product_id  :integer
#

class Item < ApplicationRecord
  has_many :order_items
  has_many :comment
  has_one_attached :image
end
