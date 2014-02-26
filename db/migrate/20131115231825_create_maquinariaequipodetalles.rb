class CreateMaquinariaequipodetalles < ActiveRecord::Migration
  def change
    create_table :maquinariaequipodetalles do |t|
      
      t.integer :maquinariaequiporesumene_id
      t.string :numero
      t.string :parte
      t.string :fecha
      t.string :horometro_inicio
      t.string :horometro_fin
      t.string :horometro_horas
      t.string :horas_efectivas
      t.string :suministro
      t.string :combustible      

      t.timestamps
    end
    add_index :maquinariaequipodetalles, :maquinariaequiporesumene_id
  end
end
