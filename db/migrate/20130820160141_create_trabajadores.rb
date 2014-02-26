class CreateTrabajadores < ActiveRecord::Migration
  def change
    create_table :trabajadores do |t|
      t.integer :partediariodepersonal_id
      t.integer :catalogodetrabajadore_id
      t.integer :catalogocategoriatrabajadore_id
      t.integer :partidasdecontrol_id
      t.string :normal
      t.string :normal_60
      t.string :normal_100
      t.string :total_horas

      t.timestamps
    end
    add_index :trabajadores, :partediariodepersonal_id
    add_index :trabajadores, :catalogodetrabajadore_id
    add_index :trabajadores, :catalogocategoriatrabajadore_id
    add_index :trabajadores, :partidasdecontrol_id
  end
end
