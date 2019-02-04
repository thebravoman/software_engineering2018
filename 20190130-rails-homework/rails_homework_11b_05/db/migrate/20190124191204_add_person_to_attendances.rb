class AddPersonToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_reference :attendances, :person, foreign_key: true
  end
end
