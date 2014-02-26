class CreateTareosgruposdetrabajos < ActiveRecord::Migration
  def change
    create_table :tareosgruposdetrabajos do |t|
      t.integer :tareo_id
      t.string :nombre

      t.timestamps
    end
  end
end
