class AddEventIdToPeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :event_id, foreign_key: true
  end
end
