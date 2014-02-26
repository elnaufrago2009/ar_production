class CreateMaquinariaequiporesumenes < ActiveRecord::Migration
  def change
    create_table :maquinariaequiporesumenes do |t|
      t.integer :reportedemaquinaria_id
      t.integer :equiposdesubcontrato_id
      t.string :nombre_equipo
      t.string :unidad
      t.string :precio_unitario
      t.string :acumulado_anterior_metrado
      t.string :acumulado_anterior_monto
      t.string :presente_valorizacion_metrado
      t.string :presente_valorizacion_monto
      t.string :acumulado_actual_metrado
      t.string :acumulado_actual_monto
      t.date :inicio
      t.date :fin
      
      t.timestamps
    end    
  end
end
