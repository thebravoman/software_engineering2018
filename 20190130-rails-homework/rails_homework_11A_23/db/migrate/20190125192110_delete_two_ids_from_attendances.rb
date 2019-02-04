class DeleteTwoIdsFromAttendances < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendances, :id_person
    remove_column :attendances, :id_event
  end
end
