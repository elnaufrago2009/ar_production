class Frente < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many :jefedefrente
  has_many :parteobras
  has_many :trabajadores
  has_many :equiposregistrados
  has_many :valesdeconsumos
  validates_presence_of :descripcion, :message => 'en blanco'  
  validates_presence_of :nombre, :message => 'en blanco'
end
