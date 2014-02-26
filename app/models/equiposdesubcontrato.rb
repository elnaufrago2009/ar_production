class Equiposdesubcontrato < ActiveRecord::Base
  attr_accessible :anho, :cantidad_h_m, :codigo, :descripcion, :horas_minimas, :equipoincluye_id, :insumodeequipo_id, :marca, :modelo, :precion_sin_igv, :serie, :subcontratodeequipo_id, :unidade_id, :fecha, :cantidad_contratada
  belongs_to :subcontratodeequipo
  belongs_to :equipoincluye
  belongs_to :unidade
  belongs_to :insumodeequipo
  has_many :partedeequipos
  has_many :vequipos


 
  validates_presence_of :codigo, message: 'en blanco'
  validates_presence_of :insumodeequipo_id, message: 'en blanco'
  validates_presence_of :descripcion, message: 'en blanco'
  validates_presence_of :marca, message: 'en blanco'
  validates_presence_of :serie, message: 'en blanco'
  validates_presence_of :modelo, message: 'en blanco'
  validates_presence_of :unidade_id, message: 'en blanco'
  validates_presence_of :equipoincluye_id, message: 'en blanco'
  validates_presence_of :cantidad_h_m, message: 'en blanco'
  validates_presence_of :fecha, message: 'en blanco'
  validates_presence_of :cantidad_contratada, message: 'en blanco'

end
