class Partedeequipo < ActiveRecord::Base
  attr_accessible :fecha, :equiposdesubcontrato_id, :numero, :subcontratodeequipo_id, :inicio, :fin, :diferencia, :combustible_cantidad, :catalogodetrabajadore_id, :combustibletipo_id, :stand_by, :mantenimiento, :aprobado, :equiposregistrados_attributes

  has_many :equiposregistrados, :dependent => :destroy
  belongs_to :equiposdesubcontrato
  belongs_to :subcontratodeequipo
  belongs_to :catalogodetrabajadore
  belongs_to :combustibletipo
  

  accepts_nested_attributes_for :equiposregistrados, reject_if: proc { |attributes| attributes[:gruposdetrabajo_id].blank? }, :allow_destroy => true

  validates :numero, :presence => {:message => "NUMERO PARTE, no puede estar en blanco."}
  validates :numero, :numericality => {:only_integer => true, :message => 'NUMERO PARTE, tiene que ser un numero.'}
  validates :numero, :uniqueness => {:message => 'NUMERO PARTE, ya esta siendo usado por otro.'}

  validates :subcontratodeequipo_id, :presence => {:message => 'Subcontrato de Equipo, no puede estar en blanco.'}
  
  validates :equiposdesubcontrato_id, :presence => {:message => 'Equipo de Subcontrato, No puede estar en Blanco.'}

  validates :catalogodetrabajadore_id, :presence => { :message => 'El Operador, No puede estar en Blanco.' }
  
  validates :inicio, :presence => { :message => 'HOROMETRO, no puede estar vacio.' }
  validates :inicio, :numericality => { :greater_than_or_equal_to => 0, :message => 'HOROMETRO, tiene que ser un numero o decimal.' }

  validates :fin, :presence => { message: 'KILOMETRAJE, no puede estar en blanco.' }
  validates :fin, :numericality => { :greater_than_or_equal_to => 0, message: 'KILOMETRAJE, tiene que ser un numero o decimal.' }

  validates :diferencia, :presence => { message: 'DIFERENCIA, no puede estar vacia.' }

  validates :stand_by, :presence => { message: 'HORAS STAND BY,  no puede estar vacio.' }
  validates :stand_by, :numericality => { :greater_than_or_equal_to => 0, message: 'HORAS STAND BY, tiene que se numero o decimal.'}

  validates :mantenimiento, :presence => { message: 'MANTENIMIENTO, no puede estar en blanco.' }
  validates :mantenimiento, :numericality => { :greater_than_or_equal_to => 0, message: 'MANTENIMIENTO, tiene que ser numero o decimal.' }
  
  validates :combustible_cantidad, :presence => { message: 'CANTIDAD COMBUSTIBLE, no puede estar vacio.' }  
  validates :combustible_cantidad, :numericality => { :greater_than_or_equal_to => 0, message: 'CANTIDAD COMBUSTIBLE, tiene que ser numero o decimal.' }

  validates :combustibletipo_id, :presence => { message: 'TIPO DE COMBUSTIBLE, no puede estar vacio.' }

  validates :fecha, :presence => { message: 'FECHA, no puede estar vacio.' }   
  
end
