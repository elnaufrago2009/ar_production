class Insumo < ActiveRecord::Base
  attr_accessible :subcontrato_id, :cantidad, :lista_id, :descripcion, :parcial, :pu_sin_igv, :unidade_id  
  belongs_to :subcontrato
  belongs_to :lista
  belongs_to :unidade  
  validates_presence_of :unidade_id, :message => ": Esta en Blanco"
  validates_presence_of :cantidad, :message => ": Esta en Blanco"
  validates_presence_of :pu_sin_igv, :message => ": Esta en Blanco"
end
