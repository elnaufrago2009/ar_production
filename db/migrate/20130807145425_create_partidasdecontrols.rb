class CreatePartidasdecontrols < ActiveRecord::Migration
  def change
    create_table :partidasdecontrols do |t|
      t.integer :fase_id
      t.integer :subfase_id
      t.integer :sectore_id
      t.integer :subsectore_id
      
      t.timestamps
    end
  end
end
