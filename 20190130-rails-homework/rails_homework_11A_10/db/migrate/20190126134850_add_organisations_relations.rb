class AddOrganisationsRelations < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :organisation_id, :integer
    add_index :people, :organisation_id
    add_column :organisation_attendances, :organisation_id, :integer
    add_index :organisation_attendances, :organisation_id
    add_column :organisation_attendances, :event_id, :integer
    add_index :organisation_attendances, :event_id
  end
end
