class CreateJefedefrentes < ActiveRecord::Migration
  def change
    create_table :jefedefrentes do |t|
      t.integer :ente_id      
      t.string :telefono
      t.string :movil_1
      t.string :movil_2
      t.string :mail
      t.string :direccion_1
      t.string :direccion_2
      t.string :foto
      t.date :nacimiento
      t.string :estado
      t.string :descripcion     

      t.timestamps
    end
  end
end
