# == Schema Information
#
# Table name: weak_keys
#
#  id         :integer          not null, primary key
#  character  :string
#  score_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_weak_keys_on_score_id  (score_id)
#

require 'test_helper'

class WeakKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
