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
  extend Enumerize
  self.inheritance_column = :_type_disabled

  validates :name, presence: true, uniqueness: { scope: :type }
  validates :type, presence: true

  enumerize :type, in: { romaji: 0, kana: 1, english: 2 }
end
