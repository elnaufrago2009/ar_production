class Unidade < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many :partidas
  has_many :equiposdesubcontratos
  has_many :insumos
  has_many :insumodeequipos
  has_many :equiposregistrados
  has_many :catalogocategoriatrabajadores
  has_many :listas
  validates_presence_of :descripcion, :message => 'en blanco'
  validates_presence_of :nombre, :message => 'en blanco'
end
