class AddRelationsToAttendance < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :person_id, :integer
    add_index :attendances, :person_id
    add_column :attendances, :event_id, :integer
    add_index :attendances, :event_id
  end
end
