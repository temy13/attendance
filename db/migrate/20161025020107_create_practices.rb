class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.date :day, null: false

      t.timestamps null: false
    end
  end
end
