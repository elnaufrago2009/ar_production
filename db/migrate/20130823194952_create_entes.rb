class CreateEntes < ActiveRecord::Migration
  def change
    create_table :entes do |t|
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.string :razon_social      
      t.string :ruc

      t.timestamps
    end
  end
end
