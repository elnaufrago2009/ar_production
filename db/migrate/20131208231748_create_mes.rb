class CreateMes < ActiveRecord::Migration
  def change
    create_table :mes do |t|
      t.string :nombre
      t.integer :numero
      t.integer :anho_id

      t.timestamps
    end
    add_index :mes, :anho_id
  end
end
