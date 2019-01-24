class MakeItPolymorphic < ActiveRecord::Migration[5.2]
  def up
    change_table :attendances do |t|
      t.references :subscriber, polymorphic: true
    end
  end

  def down
    change_table :attendances do |t|
      t.remove_references :person, foreign_key: true
    end
  end
end
