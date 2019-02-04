class AddOrganisationToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :organisation_id, :integer
    add_index :people, :organisation_id
  end
end
