# == Schema Information
#
# Table name: members
#
#  id            :integer          not null primary key
#  name          :string(255)      not null
#  part_cd       :integer          not null
#  graduate_year :integer
#  is_join       :boolean          default(TRUE)
#  role_cd       :integer          default(0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Member < ActiveRecord::Base
  as_enum :part, %w{1st 2nd dola cello guitar base lone flute clarinet}
  as_enum :role, %w{none 1st_top 2nd_top}
  after_save :after_save
  after_destroy :destroy_participations

  def after_save
    if self.is_join
      self.create_participations
    else
      self.destroy_participations
    end
  end

  def create_participations
    Practice.all.each do |day|
      Participation.find_or_create_by(member_id: self.id, practice_id: day.id)
    end
  end

  def destroy_participations
    Participation.delete_all(member_id: self.id)
  end

end
