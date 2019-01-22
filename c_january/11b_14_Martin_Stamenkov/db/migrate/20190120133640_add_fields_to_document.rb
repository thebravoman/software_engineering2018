class AddFieldsToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :name, :string
    add_column :documents, :description, :string
  end
end
