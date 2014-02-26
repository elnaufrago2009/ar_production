class CreatePartedeequipos < ActiveRecord::Migration
  def change
    create_table :partedeequipos do |t|
      t.integer :subcontratodeequipo_id
      t.integer :equiposdesubcontrato_id
      t.string :numero
      t.string :fecha

      t.timestamps
    end
    add_index :partedeequipos, :subcontratodeequipo_id
    add_index :partedeequipos, :equiposdesubcontrato_id
  end
end
