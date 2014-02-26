class Parteobra < ActiveRecord::Base  

  attr_accessible :numero, :gruposdetrabajo_id, :aprobado, :fecha, :frente_id, :partidas_attributes

  has_many :partidas, :dependent => :destroy  
  belongs_to :gruposdetrabajo
  belongs_to :frente

  accepts_nested_attributes_for :partidas, reject_if: proc { |attributes| attributes[:lista_id].blank? }, :allow_destroy => true    
  
  validates :numero, :presence => {:message => "NUMERO PARTE, no puede estar en blanco."}
  validates :numero, :numericality => {:only_integer => true, :message => 'NUMERO PARTE, tiene que ser un numero.'}
  validates :numero, :uniqueness => {:message => 'NUMERO PARTE, ya esta siendo usado por otro.'}
  
  validates :gruposdetrabajo_id, :presence => { :message => 'GRUPO DE TRABAJO, no puede estar en blanco.' }

  validates :fecha, :presence => { :message => "FECHA, no puede estar vacio." }

  validates :frente_id, :presence => { :message => 'FRENTE, no puede estar en blanco.' }
    
  
  

end

