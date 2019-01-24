class AddVisitorReferencesToAttendance < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendances, :person_id
    change_table :attendances do |t|
      t.references :visitor, polymorphic: true
    end
  end
end

