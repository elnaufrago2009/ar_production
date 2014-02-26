class CreateEquiposregistrados < ActiveRecord::Migration
  def change
    create_table :equiposregistrados do |t|
      t.integer :partedeequipo_id   
      t.integer :gruposdetrabajo_id      
      t.integer :partidasdecontrol_id
      t.integer :frente_id
      t.string :inicio
      t.string :fin
      t.string :cantidad

      t.timestamps
    end
    add_index :equiposregistrados, :frente_id
    add_index :equiposregistrados, :gruposdetrabajo_id
    add_index :equiposregistrados, :partidasdecontrol_id   
    add_index :equiposregistrados, :partedeequipo_id
  end
end
