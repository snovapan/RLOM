class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, presence: true, length: { is: 11 }
  after_initialize :init

  def authenticate(password)
    if self.password == password
      return true
    else
      return false
    end
  end

  def init
    self.balance ||= 5.00
  end
end
