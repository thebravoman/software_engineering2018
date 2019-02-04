class AddEventIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :eventid, :int
  end
end
