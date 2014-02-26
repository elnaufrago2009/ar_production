class Lista < ActiveRecord::Base
  attr_accessible :codigo, :nombre, :unidade_id, :precio_unitario, :listacategoria_id
  belongs_to :listacategoria
  has_many :partidas
  has_many :insumos
  belongs_to :unidade
  
  #validates_presence_of :listacategoria_id, :message => 'En Blanco'
  #validates_presence_of :unidade_id, :message => 'En Blanco'
  #validates_presence_of :nombre, :message => 'en blanco'
  #validates_presence_of :precio_unitario, :message => 'En blanco'
  #validates_presence_of :codigo, :message => 'En blanco'
end
