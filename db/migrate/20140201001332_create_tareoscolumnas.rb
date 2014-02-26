class CreateTareoscolumnas < ActiveRecord::Migration
  def change
    create_table :tareoscolumnas do |t|
      t.integer :tareosgruposdetrabajo_id
      t.string :item

      t.timestamps
    end
  end
end
