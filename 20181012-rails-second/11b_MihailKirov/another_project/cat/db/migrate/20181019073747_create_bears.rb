class CreateBears < ActiveRecord::Migration[5.2]
  def change
    create_table :bears do |t|
      t.string :name
      t.integer :age
      t.integer :size
      t.boolean :is_angry
      t.timestamps
    end
  end
end
