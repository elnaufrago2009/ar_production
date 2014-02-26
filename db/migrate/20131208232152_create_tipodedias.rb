class CreateTipodedias < ActiveRecord::Migration
  def change
    create_table :tipodedias do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
