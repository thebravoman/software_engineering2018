class AddNewTwoIdsToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :person_id, :integer
    add_column :attendances, :event_id, :integer
  end
end
