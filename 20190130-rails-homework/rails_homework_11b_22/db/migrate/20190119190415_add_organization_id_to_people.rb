class AddOrganizationIdToPeople < ActiveRecord::Migration[5.2]
  def change
    change_table :people do |t|
      t.belongs_to :organization
    end
  end
end

