class Ente < ActiveRecord::Base
  attr_accessible :nombre, :apellido, :dni,  :razon_social, :ruc
  has_many :jefedefrentes
  has_many :maestrodeobras
  belongs_to :proveedore
  has_many :catalogodetrabajadores

  validates :dni, :uniqueness => {:message => 'DNI, ya esta siendo usado por otro.'}, :allow_blank => true
  validates :ruc, :uniqueness => {:message => 'RUC, ya esta siendo usado por otro.'}, :allow_blank => true
  validates_length_of :nombre,:minimum => 3, :maximum => 50, :allow_blank => true, :message => 'NOMBRE, minimo 3 caracteres.'  
  validates_length_of :apellido,:minimum => 3, :maximum => 50, :allow_blank => true, :message => 'NOMBRE, minimo 3 caracteres.'
  validate :ruc_or_ente

  private
  
  def ruc_or_ente
  		if ruc.blank?  and dni.blank?
  			errors.add(:base, "RUC o DNI, no puede estar vacio los dos.")
  		end
  end

  #validates :dni, presence: true, length: { is: 6 }, numericality: { :greater_than_or_equal_to => 0 }

end
