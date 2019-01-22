class CreateDocuments < ActiveRecord::Migration[5.2]
	def change
	create_table :documents do |t|
	  t.string :title
	  t.text :about
	  t.text :text
	  t.timestamps
	end
  end
end
