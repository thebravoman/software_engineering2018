class RemovePersonIdFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_reference :events, :person_id, foreign_key: true
  end
end
