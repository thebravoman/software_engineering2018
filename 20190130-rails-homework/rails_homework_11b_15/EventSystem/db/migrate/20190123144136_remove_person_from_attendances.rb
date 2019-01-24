class RemovePersonFromAttendances < ActiveRecord::Migration[5.2]
  def change
    remove_reference :attendances, :person, foreign_key: true
  end
end
