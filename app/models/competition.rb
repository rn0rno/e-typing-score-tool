# == Schema Information
#
# Table name: competitions
#
#  id         :integer          not null, primary key
#  title      :string
#  start_at   :datetime
#  end_at     :datetime
#  theme_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_competitions_on_theme_id  (theme_id)
#

class Competition < ApplicationRecord
  belongs_to :theme

  def self.open
    today = Time.zone.now
    where('start_at <= ? AND end_at >= ?', today, today)
  end

  def self.type(type_id)
    ids = Theme.where(type: type_id).pluck(:id)
    where(theme_id: ids)
  end
end
