class CreateFases < ActiveRecord::Migration
  def change
    create_table :fases do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
