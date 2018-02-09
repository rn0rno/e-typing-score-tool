# == Schema Information
#
# Table name: scores
#
#  id             :integer          not null, primary key
#  score          :integer
#  input_time     :string
#  correct        :integer
#  miss           :integer
#  wpm            :float
#  accuracy       :float
#  competition_id :integer
#  level_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_scores_on_competition_id  (competition_id)
#  index_scores_on_level_id        (level_id)
#

class Score < ApplicationRecord
  has_many :score_weak_keys, dependent: :destroy
  has_many :weak_keys, through: :score_weak_keys
  belongs_to :competition

  delegate :theme, to: :competition
end
