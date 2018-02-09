# == Schema Information
#
# Table name: weak_keys
#
#  id         :integer          not null, primary key
#  character  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WeakKey < ApplicationRecord
  validates :character, presence: true, uniqueness: true, length: { is: 1 }
end
