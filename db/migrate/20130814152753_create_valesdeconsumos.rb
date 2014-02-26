class CreateValesdeconsumos < ActiveRecord::Migration
  def change
    create_table :valesdeconsumos do |t|
      t.string :numero_vale
      t.integer :gruposdetrabajo_id
      t.string :tipo_vale
      t.integer :proveedore_id
      t.string :tipo_material
      t.float :cantidad      
      t.date :fecha_de_ingreso
      t.integer :frente_id

      t.timestamps
    end
    add_index :valesdeconsumos, :gruposdetrabajo_id
    add_index :valesdeconsumos, :proveedore_id
    add_index :valesdeconsumos, :frente_id
  end
end
