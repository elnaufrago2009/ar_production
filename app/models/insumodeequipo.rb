class Insumodeequipo < ActiveRecord::Base
  attr_accessible :cantidad, :codigo_tobi, :nombre, :precio, :unidade_id
  has_many :equiposdesubcontratos
  belongs_to :unidade  
end
