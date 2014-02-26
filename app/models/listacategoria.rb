class Listacategoria < ActiveRecord::Base
  attr_accessible :codigo, :nombre, :importalista_id, :listas_attributes

  has_many :listas, :dependent => :destroy  
  belongs_to :importalista
  
  accepts_nested_attributes_for :listas, :allow_destroy => true  
end
