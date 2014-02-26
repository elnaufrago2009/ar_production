class CreateSubsectores < ActiveRecord::Migration
  def change
    create_table :subsectores do |t|
      t.string :codigo
      t.string :descripcion
      t.integer :sectore_id

      t.timestamps
    end
  end
end
