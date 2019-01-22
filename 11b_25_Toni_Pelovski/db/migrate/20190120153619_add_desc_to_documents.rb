class AddDescToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :desc, :string
  end
end
