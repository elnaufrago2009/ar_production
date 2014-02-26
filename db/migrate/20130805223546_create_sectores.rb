class CreateSectores < ActiveRecord::Migration
  def change
    create_table :sectores do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
