class AddAttachmentToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :attachment, :string
  end
end
