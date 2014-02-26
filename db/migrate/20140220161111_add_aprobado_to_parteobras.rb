class AddAprobadoToParteobras < ActiveRecord::Migration
  def change
    add_column :parteobras, :aprobado, :integer
  end
end
