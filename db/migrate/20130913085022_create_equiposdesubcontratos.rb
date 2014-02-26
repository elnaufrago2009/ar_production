class CreateEquiposdesubcontratos < ActiveRecord::Migration
  def change
    create_table :equiposdesubcontratos do |t|
      t.integer :subcontratodeequipo_id
      t.string :codigo
      t.string :descripcion
      t.integer :insumodeequipo_id
      t.string :marca
      t.string :serie
      t.string :modelo
      t.string :anho
      t.integer :unidade_id
      t.string :precion_sin_igv
      t.integer :equipoincluye_id
      t.string :horas_minimas
      t.string :cantidad_h_m

      t.timestamps
    end
    add_index :equiposdesubcontratos, :insumodeequipo_id
  end
end
