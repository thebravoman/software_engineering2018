class AddNameToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :name, :string
  end
end
