class CreateOrganisationAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :organisation_attendances do |t|

      t.timestamps
    end
  end
end
