class CreateAttendences < ActiveRecord::Migration[5.2]
  def change
    create_table :attendences do |t|
      t.references :event_id, foreign_key: true
      t.references :person_id, foreign_key: true

      t.timestamps
    end
  end
end
