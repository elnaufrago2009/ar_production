class Jefedefrente < ActiveRecord::Base
  attr_accessible :ente_id, :telefono, :movil_1, :movil_2, :mail, :direccion_1, :direccion_2, :foto, :nacimiento, :estado, :descripcion 
  belongs_to :ente   
  has_many :gruposdetrabajos
  validates_presence_of :ente_id, :message => 'en blanco'
end
