class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :desc
      t.string :text

      t.timestamps null: false
    end
  end
end
