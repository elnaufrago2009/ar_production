class Partediariodepersonal < ActiveRecord::Base

	attr_accessible :numero, :gruposdetrabajo_id, :fecha, :aprobado, :trabajadores_attributes

  	belongs_to :gruposdetrabajo
  	has_many :trabajadores, :dependent => :destroy
  	
  	accepts_nested_attributes_for :trabajadores, reject_if: proc { |attributes| attributes[:catalogodetrabajadore_id].blank? }, :allow_destroy => true
  	
  	validates :numero, :presence => { :message => 'NUMERO PARTE, no puede estar vacio.' }
  	validates :numero, :numericality => { :only_integer => true, :message => 'NUMERO PARTE, tiene que ser un numero.' }
  	validates :numero, :uniqueness => { :message => 'NUMERO PARTE, ya esta siendo usado por otro.' }

  	validates :gruposdetrabajo_id, :presence => { :message => 'GRUPO DE TRABAJO, no puede estar vacio.' }

  	validates :fecha, :presence => { :message => 'FECHA, no puede estar vacio.' }
  	
end
