class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :document_name
      t.string :description
      t.string :content

      t.timestamps
    end
  end
end
