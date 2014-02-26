class AddFrenteToTrabajadores < ActiveRecord::Migration
  def change
    add_column :trabajadores, :frente_id, :integer
    add_index :trabajadores, :frente_id
  end
end
