class CreateCatalogodetrabajadores < ActiveRecord::Migration
  def change
    create_table :catalogodetrabajadores do |t|
      t.integer :ente_id      
      t.string :telefono
      t.string :movil
      t.string :direccion
      t.string :mail
      t.string :numero_cuenta
      t.string :banco
      t.date :fecha_nacimiento  

      t.timestamps
    end    
    add_index :catalogodetrabajadores, :ente_id    
  end
end
