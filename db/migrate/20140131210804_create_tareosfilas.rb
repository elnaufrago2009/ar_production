class CreateTareosfilas < ActiveRecord::Migration
  def change
    create_table :tareosfilas do |t|
      t.integer :tareoscolumna_id
      t.string :item

      t.timestamps
    end
  end
end
