class AddDescToDocs < ActiveRecord::Migration[5.2]
  def change
    add_column :docs, :desc, :string
  end
end
