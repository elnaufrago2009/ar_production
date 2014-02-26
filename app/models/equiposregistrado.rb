class Equiposregistrado < ActiveRecord::Base
  attr_accessible :cantidad, :gruposdetrabajo_id, :fin, :inicio, :partidasdecontrol_id, :partedeequipo_id, :frente_id
  belongs_to :partedeequipo
  belongs_to :gruposdetrabajo
  belongs_to :partidasdecontrol
  belongs_to :frente

  validates_presence_of :gruposdetrabajo_id, :message => "GRUPODETRABAJO, no puede estar en blanco."
  validates_presence_of :partidasdecontrol_id, :message => 'PARTIDA DE CONTROL, no puede estar en blanco.'
  validates_presence_of :cantidad, :message => 'CANTIDAD, no puede estar en blanco.'
  validates_presence_of :frente_id, :message => 'FRENTE, no puede estar en blanco.'
end
