class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.string :description
      t.string :time

      t.timestamps
    end
  end
end
