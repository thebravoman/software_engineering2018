class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.belongs_to :event, index: true
      t.belongs_to :person, index: true
      t.float :price

      t.timestamps
    end
  end
end
