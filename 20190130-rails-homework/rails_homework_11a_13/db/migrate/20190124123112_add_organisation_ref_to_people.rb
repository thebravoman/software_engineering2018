class AddOrganisationRefToPeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :organisation, foreign_key: true
  end
end
