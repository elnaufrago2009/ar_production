class Equipo < ActiveRecord::Base
  attr_accessible :cantidad, :descripcion, :numeroparte, :observacion, :parteobra_id, :partidasdecontrol_id, :unidad
  belongs_to :parteobra
  belongs_to :partidasdecontrol

  validates_presence_of :descripcion, message: 'en blanco'
end
