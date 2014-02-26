class CreatePartediariodepersonals < ActiveRecord::Migration
  def change
    create_table :partediariodepersonals do |t|
      t.string :numero      
      t.integer :gruposdetrabajo_id      
      t.date :fecha

      t.timestamps
    end

    add_index :partediariodepersonals, :gruposdetrabajo_id    
  end
end
