class Adddescription < ActiveRecord::Migration[5.2]
  def change
  	  	add_column :documents, :description, :string
  end
end
