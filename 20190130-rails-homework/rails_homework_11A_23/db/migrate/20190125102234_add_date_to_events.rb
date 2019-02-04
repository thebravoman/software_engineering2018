class AddDateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :date, :DateTime
  end
end
