class Maestrodeobra < ActiveRecord::Base
  attr_accessible :banco_1, :correo, :ente_id, :foto, :jefedefrente_id, :movil, :nacimiento, :ruc, :telefono    
  belongs_to :ente
  has_many :gruposdetrabajos
  validates_presence_of :ente_id, :message => 'en blanco'
end
