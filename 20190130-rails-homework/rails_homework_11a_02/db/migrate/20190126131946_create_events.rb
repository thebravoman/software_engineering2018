class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :place
      t.text :description

      t.timestamps
    end
  end
end
