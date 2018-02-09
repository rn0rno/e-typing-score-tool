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
  validates :name, presence: true, uniqueness: true
  validates :min_score, numericality: { greater_than_or_equal_to: 0 }
  validates :max_score, numericality: { greater_than_or_equal_to: 0 }
end
