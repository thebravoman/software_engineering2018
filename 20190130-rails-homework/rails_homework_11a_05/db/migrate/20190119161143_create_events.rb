class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :location
      t.text :description
      t.date :date
      t.float :hour

      t.timestamps
    end
  end
end
