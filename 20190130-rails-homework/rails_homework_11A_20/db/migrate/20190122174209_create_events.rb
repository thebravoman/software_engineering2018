class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :description
      t.datetime :date
      t.integer :person_id

      t.timestamps
    end
  end
end