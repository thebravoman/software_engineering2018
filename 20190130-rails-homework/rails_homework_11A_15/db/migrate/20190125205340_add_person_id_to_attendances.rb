class AddPersonIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :personid, :int
  end
end
