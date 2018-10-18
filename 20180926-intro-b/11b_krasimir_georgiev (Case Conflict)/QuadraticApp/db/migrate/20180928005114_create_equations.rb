class CreateEquations < ActiveRecord::Migration[5.2]
  def change
    create_table :equations do |t|
      t.integer :a
      t.integer :b
      t.integer :c

      t.timestamps
    end
  end
end
