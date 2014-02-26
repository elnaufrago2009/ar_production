class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :descripcion
      t.string :unidad
      t.string :cantidad
      t.string :numeroparte
      t.integer :partidasdecontrol_id
      t.string :observacion
      t.integer :parteobra_id

      t.timestamps
    end
  end
end
