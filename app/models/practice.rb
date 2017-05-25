# == Schema Information
#
# Table name: practices
#
#  id         :integer          not null, primary key
#  day        :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Practice < ActiveRecord::Base
  after_save :after_save
  after_destroy :destroy_participations

  def after_save
    self.create_participations
  end

  def create_participations
    Member.where(is_join: true).each do |member|
      Participation.find_or_create_by(member_id: member.id, practice_id: self.id)
    end
  end

  def destroy_participations
    Participation.delete_all(practice_id: self.id)
  end
end
