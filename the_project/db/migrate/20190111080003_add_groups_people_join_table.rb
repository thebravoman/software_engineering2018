class AddGroupsPeopleJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_people, id: false do |t|
      t.belongs_to :group, index: true
      t.belongs_to :person, index: true
    end
  end
end
