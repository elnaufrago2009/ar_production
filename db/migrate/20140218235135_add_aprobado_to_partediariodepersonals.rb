class AddAprobadoToPartediariodepersonals < ActiveRecord::Migration
  def change
    add_column :partediariodepersonals, :aprobado, :integer
  end
end
