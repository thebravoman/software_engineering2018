class AddDateToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :uploaded_on, :datetime
  end
end
