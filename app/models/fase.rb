class Fase < ActiveRecord::Base
  attr_accessible :codigo, :descripcion
  has_many :subfases
  has_many :partidasdecontrols
end
