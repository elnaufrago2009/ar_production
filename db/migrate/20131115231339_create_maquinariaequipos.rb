class CreateMaquinariaequipos < ActiveRecord::Migration
  def change
    create_table :maquinariaequipos do |t|
      t.string :nombre
      t.integer :reportedemaquinaria_id

      t.timestamps
    end
    add_index :maquinariaequipos, :reportedemaquinaria_id
  end
end
