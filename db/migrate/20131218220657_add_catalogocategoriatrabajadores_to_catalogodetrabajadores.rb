class AddCatalogocategoriatrabajadoresToCatalogodetrabajadores < ActiveRecord::Migration
  def change
    add_column :catalogodetrabajadores, :catalogocategoriatrabajadore_id, :integer
    add_index :catalogodetrabajadores, :catalogocategoriatrabajadore_id
  end
end
