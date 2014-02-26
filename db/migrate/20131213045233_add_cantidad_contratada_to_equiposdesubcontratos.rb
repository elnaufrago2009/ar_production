class AddCantidadContratadaToEquiposdesubcontratos < ActiveRecord::Migration
  def change
    add_column :equiposdesubcontratos, :cantidad_contratada, :string
  end
end
