class CreateGruposdetrabajos < ActiveRecord::Migration
  def change
    create_table :gruposdetrabajos do |t|
      t.integer :sectore_id
      t.integer :subsectore_id      
      t.integer :jefedefrente_id
      t.integer :subcontrato_id
      t.integer :maestrodeobra_id
      t.string :activo

      t.timestamps
    end
    add_index :gruposdetrabajos, :sectore_id
    add_index :gruposdetrabajos, :subsectore_id    
    add_index :gruposdetrabajos, :jefedefrente_id
    add_index :gruposdetrabajos, :subcontrato_id
    add_index :gruposdetrabajos, :maestrodeobra_id
  end
end
