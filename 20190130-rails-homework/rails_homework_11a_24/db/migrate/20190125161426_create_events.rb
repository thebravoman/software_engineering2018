class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.text :content
      t.datetime :date

      t.timestamps null: false
    end
  end
end
