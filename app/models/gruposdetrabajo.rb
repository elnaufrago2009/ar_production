class Gruposdetrabajo < ActiveRecord::Base
  attr_accessible :sectore_id, :subsectore_id, :jefedefrente_id, :subcontrato_id, :maestrodeobra_id, :activo
  belongs_to :sectore
  belongs_to :subsectore  
  belongs_to :jefedefrente
  belongs_to :subcontrato
  belongs_to :maestrodeobra
  has_many :parteobras
  has_many :partediariodepersonals
  has_many :valesdeconsumos
  has_many :equiposregistrados

  validates_presence_of :sectore_id, :message => " : Seleccione un Sector"
  validates_presence_of :subsectore_id, :message => " : Seleccione un SubSector"  
  validates_presence_of :jefedefrente_id, :message => " : Seleccione un jefedefrente"
  validates_presence_of :subcontrato_id, :message => " : Seleccione un Subcontratista"
  validates_presence_of :maestrodeobra_id, :message => " : Seleccione un maestrodeobra"
  validates_presence_of :activo, :message => 'Seleccionar activo o inactivo'

end
