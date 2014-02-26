class Materiale < ActiveRecord::Base
  attr_accessible :cantidad, :descripcion, :observacion, :parteobra_id, :unidad, :partidasdecontrol_id
  belongs_to :parteobra
  belongs_to :partidasdecontrol

  validates_presence_of :descripcion, message: 'en blanco'
  validates_presence_of :unidad, message: 'en blanco'
  validates_presence_of :cantidad, message: 'en blanco'
  validates_presence_of :partidasdecontrol_id, message: 'en blanco'
  
end
