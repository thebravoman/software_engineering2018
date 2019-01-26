class AddPidToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :pid, :int
  end
end
