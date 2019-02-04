class CreateAttendences < ActiveRecord::Migration[5.2]
  def change
    create_table :attendences do |t|
      t.belongs_to :person
      t.belongs_to :event
      t.timestamps
    end
  end
end
