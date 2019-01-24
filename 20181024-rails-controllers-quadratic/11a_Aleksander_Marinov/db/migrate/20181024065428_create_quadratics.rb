class CreateQuadratics < ActiveRecord::Migration[5.2]
  def change
    create_table :quadratics do |t|
        
      t.timestamps
    end
  end
end
