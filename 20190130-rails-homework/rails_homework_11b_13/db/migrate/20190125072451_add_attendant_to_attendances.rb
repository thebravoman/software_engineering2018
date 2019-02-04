class AddAttendantToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_reference :attendances, :attendant, polymorphic: true
  end
end
