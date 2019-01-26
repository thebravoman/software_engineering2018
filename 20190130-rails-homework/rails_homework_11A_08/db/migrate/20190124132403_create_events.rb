class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :location
      t.text :description
      t.text :date

      t.timestamps
    end
  end
end
