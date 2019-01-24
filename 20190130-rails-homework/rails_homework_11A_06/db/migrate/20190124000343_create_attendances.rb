class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.references :person
      t.references :event
      t.references :organization

      t.timestamps
    end
  end
end
