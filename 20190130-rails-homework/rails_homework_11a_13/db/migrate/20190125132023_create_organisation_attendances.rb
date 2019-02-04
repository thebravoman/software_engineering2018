class CreateOrganisationAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :organisation_attendances do |t|
      t.references :event, foreign_key: true
      t.references :organisation, foreign_key: true

      t.timestamps
    end
  end
end
