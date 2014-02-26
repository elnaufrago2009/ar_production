class CreateSemanas < ActiveRecord::Migration
  def change
    create_table :semanas do |t|
      t.integer :numero
      t.integer :me_id

      t.timestamps
    end
    add_index :semanas, :me_id
  end
end
