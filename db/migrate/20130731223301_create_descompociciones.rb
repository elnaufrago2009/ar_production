class CreateDescompociciones < ActiveRecord::Migration
  def change
    create_table :descompociciones do |t|
      t.string :descripcion
      t.string :unidad
      t.string :cantidad
      t.string :terreno
      t.string :cantidadvales
      t.string :observacion
      t.integer :parteobra_id

      t.timestamps
    end
  end
end
