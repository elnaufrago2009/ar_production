class AddEquiposdesubcontratosFechaToEquiposdesubcontratos < ActiveRecord::Migration
  def change
    add_column :equiposdesubcontratos, :fecha, :date
  end
end
