class CreateJoinTableEventsOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_join_table :events, :organizations do |t|
      t.index [:event_id, :organization_id]
      # t.index [:organization_id, :event_id]
    end
  end
end
