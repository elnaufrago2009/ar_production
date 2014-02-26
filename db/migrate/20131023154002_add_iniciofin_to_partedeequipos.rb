class AddIniciofinToPartedeequipos < ActiveRecord::Migration
  def change
    add_column :partedeequipos, :inicio, :string
    add_column :partedeequipos, :fin, :string
    add_column :partedeequipos, :diferencia, :string
    add_column :partedeequipos, :combustible_cantidad, :string
  end
end
