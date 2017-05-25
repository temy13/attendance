# == Schema Information
#
# Table name: participations
#
#  id          :integer          not null, primary key
#  member_id   :integer          not null
#  practice_id :integer          not null
#  state_cd    :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ParticipationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
