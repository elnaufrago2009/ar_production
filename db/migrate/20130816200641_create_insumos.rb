class CreateInsumos < ActiveRecord::Migration
  def change
    create_table :insumos do |t|      
      t.string :cantidad
      t.string :pu_sin_igv
      t.string :parcial
      t.string :descripcion
      t.integer :unidade_id
      t.integer :lista_id
      t.integer :subcontrato_id

      t.timestamps
    end
    add_index :insumos, :unidade_id
    add_index :insumos, :lista_id
    add_index :insumos, :subcontrato_id
  end
end
