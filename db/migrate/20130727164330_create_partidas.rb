class CreatePartidas < ActiveRecord::Migration
  def change
    create_table :partidas do |t|
      t.integer :lista_id
      t.string :diametro
      t.string :serieclase
      t.string :profundidad
      t.integer :unidade_id
      t.string :metrado
      t.string :observacion
      t.integer :parteobra_id
      t.string :terreno

      t.timestamps
    end
    add_index :partidas, :unidade_id
  end
end
