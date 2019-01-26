class AddEidToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :eid, :int
  end
end
