class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.references :person, foreign_key: true
      t.references :event, foreign_key: true
    end
  end
end