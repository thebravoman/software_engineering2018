class AddNameToDocs < ActiveRecord::Migration[5.2]
  def change
    add_column :docs, :name, :string
  end
end
