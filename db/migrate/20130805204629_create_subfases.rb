class CreateSubfases < ActiveRecord::Migration
  def change
    create_table :subfases do |t|
      t.string :codigo
      t.string :descripcion
      t.integer :fase_id

      t.timestamps
    end
  end
end
