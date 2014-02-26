class AddOperadorToPartedeequipos < ActiveRecord::Migration
  def change
    add_column :partedeequipos, :catalogodetrabajadore_id, :integer
    add_column :partedeequipos, :combustibletipo_id, :integer
    add_column :partedeequipos, :stand_by, :string
    add_column :partedeequipos, :mantenimiento, :string
    add_index :partedeequipos, :catalogodetrabajadore_id
  end
end
