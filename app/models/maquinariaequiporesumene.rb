class Maquinariaequiporesumene < ActiveRecord::Base  	
  attr_accessible :reportedemaquinaria_id, :equiposdesubcontrato_id, :nombre_equipo, :unidad, :precio_unitario, :acumulado_anterior_metrado, :acumulado_anterior_monto, :presente_valorizacion_metrado, :presente_valorizacion_monto, :acumulado_actual_metrado, :acumulado_actual_monto, :inicio, :fin, :maquinariaequipodetalles_attributes

  has_many :maquinariaequipodetalles, :dependent => :destroy
  belongs_to :reportedemaquinaria
  
  accepts_nested_attributes_for :maquinariaequipodetalles, :allow_destroy => true

end
