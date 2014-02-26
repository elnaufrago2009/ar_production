class CreateCombustibletipos < ActiveRecord::Migration
  def change
    create_table :combustibletipos do |t|
      t.string :tipo
      t.string :combustible

      t.timestamps
    end
  end
end
