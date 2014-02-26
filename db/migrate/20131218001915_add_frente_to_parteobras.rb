class AddFrenteToParteobras < ActiveRecord::Migration
  def change
    add_column :parteobras, :frente_id, :integer
    add_index :parteobras, :frente_id
  end
end
