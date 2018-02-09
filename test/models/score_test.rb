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

require 'test_helper'

class ScoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
