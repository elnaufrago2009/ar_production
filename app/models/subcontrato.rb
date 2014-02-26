class Subcontrato < ActiveRecord::Base
  attr_accessible :adelanto, :adelanto_detalle, :condiciones_de_pago, :fondo_de_garantia, :igv, :valorizacion, :proveedore_id, :amortizacion_porcentaje, :amortizacion_numero, :fondo_garantia_porcentaje, :detraccion_total_inicial_porcentaje, :monto_contratado, :adelanto1, :adelanto2, :adelanto3, :adelanto4, :fecha1, :fecha2, :fecha3, :fecha4, :insumos_attributes
  
  belongs_to :proveedore
  has_many :insumos, :dependent => :destroy 
  has_many :parteobras
  has_many :partediariodepersonals
  has_many :gruposdetrabajos
  
  accepts_nested_attributes_for :insumos, reject_if: proc { |attributes| attributes[:lista_id].blank? }, :allow_destroy => true    

  validates_presence_of :proveedore_id, :message => "Esta en Blanco"  
  validates_presence_of :igv, :message => "Esta en Blanco"
  validates_presence_of :fondo_garantia_porcentaje, :message => 'en blanco'
  validates_presence_of :detraccion_total_inicial_porcentaje, :message => "Esta en Blanco"
end
