class CreateDias < ActiveRecord::Migration
  def change
    create_table :dias do |t|
      t.integer :numero
      t.integer :tipodedia_id
      t.string :nombre
      t.integer :semana_id

      t.timestamps
    end
    add_index :dias, :semana_id
    add_index :dias, :tipodedia_id
  end
end
