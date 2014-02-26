class CreateEquipoincluyes < ActiveRecord::Migration
  def change
    create_table :equipoincluyes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
