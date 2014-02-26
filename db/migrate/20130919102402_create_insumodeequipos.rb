class CreateInsumodeequipos < ActiveRecord::Migration
  def change
    create_table :insumodeequipos do |t|
      t.string :codigo_tobi
      t.string :nombre
      t.integer :unidade_id
      t.string :cantidad
      t.string :precio

      t.timestamps
    end
    add_index :insumodeequipos, :unidade_id
  end
end
