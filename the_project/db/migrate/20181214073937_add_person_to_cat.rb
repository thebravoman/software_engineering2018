class AddPersonToCat < ActiveRecord::Migration[5.2]
  def change
      change_table :cats do |t|
        t.belongs_to :person
      end
  end
end
