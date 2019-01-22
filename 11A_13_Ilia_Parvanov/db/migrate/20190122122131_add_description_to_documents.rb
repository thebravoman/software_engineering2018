class AddDescriptionToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :description, :text
  end
end
