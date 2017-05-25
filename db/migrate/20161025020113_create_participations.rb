class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :member_id, null: false
      t.integer :practice_id, null: false
      t.integer :state_cd, default: 0

      t.timestamps null: false
    end
  end
end
