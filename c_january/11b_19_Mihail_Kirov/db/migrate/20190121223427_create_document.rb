class CreateDocument < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.text :text
      t.timestamps
    end
  end
end
