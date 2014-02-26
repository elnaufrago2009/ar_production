class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :descripcion
      t.string :unidad
      t.string :cantidad
      t.integer :partidasdecontrol_id
      t.string :observacion
      t.integer :parteobra_id

      t.timestamps
    end
  end
end
