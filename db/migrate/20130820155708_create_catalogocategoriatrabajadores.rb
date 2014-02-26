class CreateCatalogocategoriatrabajadores < ActiveRecord::Migration
  def change
    create_table :catalogocategoriatrabajadores do |t|
      t.string :nombre      
      t.integer :unidade_id
      t.string :precio_unitario_normal
      t.string :precio_unitario_60
      t.string :precio_unitario_100

      t.timestamps
    end
    add_index :catalogocategoriatrabajadores, :unidade_id
  end
end
