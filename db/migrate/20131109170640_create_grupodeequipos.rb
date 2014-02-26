class CreateGrupodeequipos < ActiveRecord::Migration
  def change
    create_table :grupodeequipos do |t|
      t.string :nombre
      t.integer :insumodeequipo_id
      t.string :marca
      t.string :serie
      t.string :modelo
      t.string :anho
      t.string :detalle

      t.timestamps
    end
  end
end
