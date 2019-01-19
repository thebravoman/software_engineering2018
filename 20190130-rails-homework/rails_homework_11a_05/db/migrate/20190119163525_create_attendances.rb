class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :name
      t.string :event

      t.timestamps
    end
  end
end
