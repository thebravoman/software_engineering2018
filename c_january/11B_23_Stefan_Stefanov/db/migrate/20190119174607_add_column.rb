class AddColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :documents, :filename, :string
  end
end
