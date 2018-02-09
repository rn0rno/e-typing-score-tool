# == Schema Information
#
# Table name: score_weak_keys
#
#  id          :integer          not null, primary key
#  score_id    :integer          not null
#  weak_key_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_score_weak_keys_on_score_id     (score_id)
#  index_score_weak_keys_on_weak_key_id  (weak_key_id)
#

require 'test_helper'

class ScoreWeakKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
