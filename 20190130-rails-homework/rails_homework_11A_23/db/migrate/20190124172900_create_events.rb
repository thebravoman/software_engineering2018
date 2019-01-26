class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.string :description
      t.integer :date

      t.timestamps
    end
  end
end
