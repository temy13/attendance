class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.integer :part_cd, null: false
      t.integer :graduate_year
      t.boolean :is_join, default: true
      t.integer :role_cd, default: 0


      t.timestamps null: false
    end
  end
end
