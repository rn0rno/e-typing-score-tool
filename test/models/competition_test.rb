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

require 'test_helper'

class CompetitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
