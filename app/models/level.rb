# == Schema Information
#
# Table name: levels
#
#  id         :integer          not null, primary key
#  name       :string
#  min_score  :integer
#  max_score  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Level < ApplicationRecord
end
