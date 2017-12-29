# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  name       :string
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theme < ApplicationRecord
end
