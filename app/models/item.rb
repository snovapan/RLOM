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

class Item < ApplicationRecord
  belongs_to :products
  has_many :cart_items
  has_many :order_items
  has_many :comment
  has_many_attached :images
end
