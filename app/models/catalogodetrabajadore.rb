class Catalogodetrabajadore < ActiveRecord::Base
  attr_accessible :ente_id, :telefono, :movil, :direccion, :mail, :numero_cuenta, :banco, :fecha_nacimiento, :catalogocategoriatrabajadore_id 
  belongs_to :ente
  belongs_to :parteequipo
  belongs_to :catalogocategoriatrabajadore
  has_many :trabajadores
end
