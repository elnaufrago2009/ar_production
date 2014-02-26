class CreateVequipos < ActiveRecord::Migration
  def change
    create_table :vequipos do |t|
      t.string :nombre
      t.string :cantidad
      t.string :unidad
      t.string :precio_unitario
      t.string :parcial
      t.integer :valorizacione_id
      t.integer :equiposdesubcontrato_id

      t.timestamps
    end
    add_index :vequipos, :equiposdesubcontrato_id
  end
end
