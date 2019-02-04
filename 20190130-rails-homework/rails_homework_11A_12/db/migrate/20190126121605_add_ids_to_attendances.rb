class AddIdsToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_reference :attendances, :event, foreign_key: true
    add_reference :attendances, :person, foreign_key: true
  end
end
