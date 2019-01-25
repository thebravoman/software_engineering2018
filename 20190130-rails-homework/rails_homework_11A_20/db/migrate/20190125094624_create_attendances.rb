class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances, id: false do |t|
    	t.integer :person_id
    	t.integer :event_id

		t.timestamps
    end
  end
end
