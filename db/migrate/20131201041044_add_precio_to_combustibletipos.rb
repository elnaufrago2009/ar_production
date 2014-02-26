class AddPrecioToCombustibletipos < ActiveRecord::Migration
  def change
    add_column :combustibletipos, :precio, :string
  end
end
