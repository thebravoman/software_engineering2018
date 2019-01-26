class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :event_id
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
