class Partida < ActiveRecord::Base
  attr_accessible :lista_id, :diametro, :terreno, :metrado, :observacion, :parteobra_id, :profundidad, :serieclase, :unidade_id
  belongs_to :parteobra
  belongs_to :lista
  belongs_to :unidade

  validates_presence_of :lista_id, message: 'PARTIDA, no puede estar en blanco.'
  validates_presence_of :unidade_id, message: 'UNIDAD, no puede estar en blanco.'
  validates_presence_of :metrado, message: 'METRADO, no puede estar en blanco.'  
end
