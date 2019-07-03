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
#

class Item < ApplicationRecord
  has_many :cart_items
  has_many :user, :through => :cart_items
  has_many :order_items
  has_many :user, :through => :cart_items
end