class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, presence: true, length: { is: 11 }

  def authenticate
    real_user = User.find_by(phone: self.phone)
    if real_user.password == self.password
      return true
    else
      return false
    end
  end
end
