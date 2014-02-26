class CreateImportalistas < ActiveRecord::Migration
  def change
    create_table :importalistas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
