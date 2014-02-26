class CreateFrentes < ActiveRecord::Migration
  def change
    create_table :frentes do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
