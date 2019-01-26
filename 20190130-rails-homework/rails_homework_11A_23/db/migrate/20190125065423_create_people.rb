class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.name :string
      t.timestamps
    end
  end
end
