class AddSubscriptionToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :subscription, :boolean
  end
end
