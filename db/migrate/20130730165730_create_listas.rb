class CreateListas < ActiveRecord::Migration
  def change
    create_table :listas do |t|
      t.string :codigo
      t.string :nombre
      t.integer :unidade_id
      t.string :precio_unitario        
      t.integer :listacategoria_id

      t.timestamps
    end
    add_index :listas, :unidade_id
  end
end
