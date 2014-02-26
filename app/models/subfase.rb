class Subfase < ActiveRecord::Base
  attr_accessible :codigo, :descripcion, :fase_id
  belongs_to :fase
  has_many :partidasdecontrols
  validates_presence_of :codigo, :message => 'en blanco'
  validates_presence_of :descripcion,:message => 'en blanaco'
  validates_presence_of :fase_id, :message => 'en blanco'
end
