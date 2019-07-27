# == Schema Information
#
# Table name: admins
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admin < ApplicationRecord
end
