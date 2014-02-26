class Sectore < ActiveRecord::Base
  attr_accessible :codigo, :descripcion
  has_many :subsectores  
  has_many :gruposdetrabajos   

  validates_presence_of :codigo, :message => ": Esta en Blanco"
end
