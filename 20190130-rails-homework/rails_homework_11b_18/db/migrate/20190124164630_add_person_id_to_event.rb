class AddPersonIdToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :person_id, foreign_key: true
  end
end
