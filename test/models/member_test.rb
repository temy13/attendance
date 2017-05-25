# == Schema Information
#
# Table name: members
#
#  id            :integer          not null, primary key
#  name          :string(255)      not null
#  part_cd       :integer          not null
#  graduate_year :integer
#  is_join       :boolean          default(TRUE)
#  role_cd       :integer          default(0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
