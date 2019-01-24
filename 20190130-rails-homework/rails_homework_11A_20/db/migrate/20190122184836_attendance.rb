class Attendance < ActiveRecord::Migration[5.2]
	def change
		create_join_table :people, :events, id:false do |t|
			t.index :person_id
			t.index :event_id
		end
	end
end
