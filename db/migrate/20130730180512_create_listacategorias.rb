class CreateListacategorias < ActiveRecord::Migration
  def change
    create_table :listacategorias do |t|
      t.string :codigo
      t.string :nombre
      t.integer :importalista_id
      
      t.timestamps
    end
    add_index :listacategorias, :importalista_id
  end
end
