class Trabajadore < ActiveRecord::Base
  attr_accessible :partediariodepersonal_id, :catalogodetrabajadore_id, :catalogocategoriatrabajadore_id, :partidasdecontrol_id, :normal, :normal_100, :normal_60, :total_horas, :frente_id

  validates :catalogodetrabajadore_id, :presence => { :message => 'TRABAJADOR, no puede estar vacio.' }
  validates :frente_id, :presence => { :message => 'FRENTE, no puede estar vacio.' }
  validates :partidasdecontrol_id, :presence => { :message => 'PARTIDA DE CONTROL, 	no puede estar vacio.' }

  validates :normal, :presence => { :message => 'HORAS NORMALES, no puede estar vacio.' }
  validates :normal, :numericality => {:greater_than_or_equal_to => 0, :message => 'HORAS NORMALES, tiene que ser un numero o decimal.'}

  
  validates :total_horas, :presence => { :message => 'TOTAL DE HORAS, no puede estar vacio.' }
  validates :total_horas, :numericality => { :greater_than_or_equal_to => 0, :message => 'TOTAL DE HORAS, tiene que ser numero o decimal' }
  

  belongs_to :partediariodepersonal
  belongs_to :catalogodetrabajadore
  belongs_to :catalogocategoriatrabajadore
  belongs_to :partidasdecontrol
  belongs_to :frente
end
