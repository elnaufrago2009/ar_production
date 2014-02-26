class Equipoincluye < ActiveRecord::Base
  attr_accessible :nombre
  has_many :equiposdesubcontratos
end
