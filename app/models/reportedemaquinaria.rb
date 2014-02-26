class Reportedemaquinaria < ActiveRecord::Base
  attr_accessible :nombre_subcontrato, :subcontratodeequipo_id, :inicio, :fin, :aprobado, :numero_de_valoriacion, :valorizacion_cantidad, :valorizacion_acumulado_anterior, :valorizacion_acumulado_actual, :amortizacion_adelanto_porcentaje, :amortizacion_adelanto_cantidad, :amortizacion_adelanto_acumulado_anterior, :amortizacion_adelanto_acumulado_actual, :total_facturar_cantidad, :total_facturar_acumulado_anterior, :total_facturar_acumulado_actual, :igv_total_facturar_porcentaje, :igv_total_facturar_cantidad, :igv_total_facturar_acumulado_anterior, :igv_total_facturar_acumulado_actual, :total_incluido_igv_cantidad, :total_incluido_igv_acumulado_anterior, :total_incluido_igv_acumulado_actual, :detraccion_total_porcentaje, :detraccion_total_cantidad, :detraccion_total_acumulado_anterior, :detraccion_total_acumulado_actual, :descuento_combustible_cantidad, :descuento_combustible_acumulado_anterior, :descuento_combustible_acumulado_actual, :descuento_otros_cantidad, :descuento_otros_acumulado_anterior, :descuento_otros_acumulado_actual, :total_retenciones_cantidad, :total_retenciones_acumulado_anterior, :total_retenciones_acumulado_actual, :neto_pagar_cantidad, :neto_pagar_acumulado_anterior, :neto_pagar_acumulado_actual, :monto_contratado, :adelanto, :amortizacion_acumulada, :saldo, :maquinariaequiporesumenes_attributes
  
  has_many :maquinariaequiporesumenes, :dependent => :destroy
  
  accepts_nested_attributes_for :maquinariaequiporesumenes, :allow_destroy => true

end
