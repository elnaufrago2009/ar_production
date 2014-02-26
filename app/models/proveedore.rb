class Proveedore < ActiveRecord::Base
  attr_accessible :banco_1, :banco_2, :banco_3, :cci_1, :cci_2, :cci_3, :contacto, :cuenta_corriente_1, :cuenta_corriente_2, :cuenta_corriente_3, :cuenta_de_detraccion, :direccion, :movil_1, :movil_2, :ente_id, :ruc, :nombre, :telefono
  belongs_to :ente
  
  has_many :subcontratos  
  has_many :subcontratodeequipos 
  has_many :valesdeconsumos

  validates_presence_of :ente_id, :message => ": seleccione un ente"
end
