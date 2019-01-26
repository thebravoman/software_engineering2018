class AddTwoIndexesInAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :id_person, :integer
    add_column :attendances, :id_event, :integer

  end
end
