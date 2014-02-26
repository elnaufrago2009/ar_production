class CreateParteobras < ActiveRecord::Migration
  def change
    create_table :parteobras do |t|
      t.string :numero      
      t.date :fecha
      t.integer :gruposdetrabajo_id

      t.timestamps
    end
       
    add_index :parteobras, :gruposdetrabajo_id
  end
end
