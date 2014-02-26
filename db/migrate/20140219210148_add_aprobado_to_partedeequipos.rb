class AddAprobadoToPartedeequipos < ActiveRecord::Migration
  def change
    add_column :partedeequipos, :aprobado, :integer
  end
end
