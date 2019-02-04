class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.belongs_to :person, index: true
      t.belongs_to :event, index: true
      t.timestamps
    end
  end

end
