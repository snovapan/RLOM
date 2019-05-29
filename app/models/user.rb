class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, presence: true, length: { is: 11 }
end
