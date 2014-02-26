class Subsectore < ActiveRecord::Base
  attr_accessible :codigo, :descripcion, :sectore_id  
  belongs_to :sectore
  has_many :partidasdecontrols  
  has_many :gruposdetrabajos  
  validates_presence_of :codigo, :message => "En blanco"
  validates_presence_of :descripcion, :message => 'En blanco'
  validates_presence_of :sectore_id, :message => 'En Blanco'
end
