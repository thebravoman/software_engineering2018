class AddOrganizationToPerson < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :organization, foreign_key: true
  end
end
