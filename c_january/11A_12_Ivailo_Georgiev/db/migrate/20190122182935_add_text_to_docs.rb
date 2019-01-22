class AddTextToDocs < ActiveRecord::Migration[5.2]
  def change
    add_column :docs, :text, :string
  end
end
