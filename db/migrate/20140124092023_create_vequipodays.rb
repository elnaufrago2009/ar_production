class CreateVequipodays < ActiveRecord::Migration
  def change
    create_table :vequipodays do |t|
      t.string :numero_parte
      t.string :fecha
      t.string :hora_inicio
      t.string :hora_fin
      t.string :horas_horas
      t.string :horas_efectivas
      t.string :suministro
      t.string :combustible
      t.integer :vequipo_id

      t.timestamps
    end
    add_index :vequipodays, :vequipo_id
  end
end
