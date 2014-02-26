class Descompocicione < ActiveRecord::Base
  attr_accessible :cantidad, :cantidadvales, :descripcion, :observacion, :parteobra_id, :terreno, :unidad
  belongs_to :parteobra
end