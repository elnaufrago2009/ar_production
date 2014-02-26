# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140224235748) do

  create_table "anhos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "apgraficos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "catalogocategoriatrabajadores", :force => true do |t|
    t.string   "nombre"
    t.integer  "unidade_id"
    t.string   "precio_unitario_normal"
    t.string   "precio_unitario_60"
    t.string   "precio_unitario_100"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "catalogocategoriatrabajadores", ["unidade_id"], :name => "index_catalogocategoriatrabajadores_on_unidade_id"

  create_table "catalogodetrabajadores", :force => true do |t|
    t.integer  "ente_id"
    t.string   "telefono"
    t.string   "movil"
    t.string   "direccion"
    t.string   "mail"
    t.string   "numero_cuenta"
    t.string   "banco"
    t.date     "fecha_nacimiento"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "catalogocategoriatrabajadore_id"
  end

  add_index "catalogodetrabajadores", ["catalogocategoriatrabajadore_id"], :name => "index_catalogodetrabajadores_on_catalogocategoriatrabajadore_id"
  add_index "catalogodetrabajadores", ["ente_id"], :name => "index_catalogodetrabajadores_on_ente_id"

  create_table "combustibletipos", :force => true do |t|
    t.string   "tipo"
    t.string   "combustible"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "precio"
  end

  create_table "descompociciones", :force => true do |t|
    t.string   "descripcion"
    t.string   "unidad"
    t.string   "cantidad"
    t.string   "terreno"
    t.string   "cantidadvales"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "dias", :force => true do |t|
    t.integer  "numero"
    t.integer  "tipodedia_id"
    t.string   "nombre"
    t.integer  "semana_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "dias", ["semana_id"], :name => "index_dias_on_semana_id"
  add_index "dias", ["tipodedia_id"], :name => "index_dias_on_tipodedia_id"

  create_table "entes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.string   "razon_social"
    t.string   "ruc"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "equipoincluyes", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "equipos", :force => true do |t|
    t.string   "descripcion"
    t.string   "unidad"
    t.string   "cantidad"
    t.string   "numeroparte"
    t.integer  "partidasdecontrol_id"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "equiposdesubcontratos", :force => true do |t|
    t.integer  "subcontratodeequipo_id"
    t.string   "codigo"
    t.string   "descripcion"
    t.integer  "insumodeequipo_id"
    t.string   "marca"
    t.string   "serie"
    t.string   "modelo"
    t.string   "anho"
    t.integer  "unidade_id"
    t.string   "precion_sin_igv"
    t.integer  "equipoincluye_id"
    t.string   "horas_minimas"
    t.string   "cantidad_h_m"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.date     "fecha"
    t.string   "cantidad_contratada"
  end

  add_index "equiposdesubcontratos", ["insumodeequipo_id"], :name => "index_equiposdesubcontratos_on_insumodeequipo_id"

  create_table "equiposregistrados", :force => true do |t|
    t.integer  "partedeequipo_id"
    t.integer  "gruposdetrabajo_id"
    t.integer  "partidasdecontrol_id"
    t.integer  "frente_id"
    t.string   "inicio"
    t.string   "fin"
    t.string   "cantidad"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "equiposregistrados", ["frente_id"], :name => "index_equiposregistrados_on_frente_id"
  add_index "equiposregistrados", ["gruposdetrabajo_id"], :name => "index_equiposregistrados_on_gruposdetrabajo_id"
  add_index "equiposregistrados", ["partedeequipo_id"], :name => "index_equiposregistrados_on_partedeequipo_id"
  add_index "equiposregistrados", ["partidasdecontrol_id"], :name => "index_equiposregistrados_on_partidasdecontrol_id"

  create_table "fases", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "frentes", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "grupodeequipos", :force => true do |t|
    t.string   "nombre"
    t.integer  "insumodeequipo_id"
    t.string   "marca"
    t.string   "serie"
    t.string   "modelo"
    t.string   "anho"
    t.string   "detalle"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "gruposdetrabajos", :force => true do |t|
    t.integer  "sectore_id"
    t.integer  "subsectore_id"
    t.integer  "frente_id"
    t.integer  "jefedefrente_id"
    t.integer  "subcontrato_id"
    t.integer  "maestrodeobra_id"
    t.string   "activo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "gruposdetrabajos", ["frente_id"], :name => "index_gruposdetrabajos_on_frente_id"
  add_index "gruposdetrabajos", ["jefedefrente_id"], :name => "index_gruposdetrabajos_on_jefedefrente_id"
  add_index "gruposdetrabajos", ["maestrodeobra_id"], :name => "index_gruposdetrabajos_on_maestrodeobra_id"
  add_index "gruposdetrabajos", ["sectore_id"], :name => "index_gruposdetrabajos_on_sectore_id"
  add_index "gruposdetrabajos", ["subcontrato_id"], :name => "index_gruposdetrabajos_on_subcontrato_id"
  add_index "gruposdetrabajos", ["subsectore_id"], :name => "index_gruposdetrabajos_on_subsectore_id"

  create_table "importalistas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "insumodeequipos", :force => true do |t|
    t.string   "codigo_tobi"
    t.string   "nombre"
    t.integer  "unidade_id"
    t.string   "cantidad"
    t.string   "precio"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "insumodeequipos", ["unidade_id"], :name => "index_insumodeequipos_on_unidade_id"

  create_table "insumos", :force => true do |t|
    t.string   "cantidad"
    t.string   "pu_sin_igv"
    t.string   "parcial"
    t.string   "descripcion"
    t.integer  "unidade_id"
    t.integer  "lista_id"
    t.integer  "subcontrato_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "insumos", ["lista_id"], :name => "index_insumos_on_lista_id"
  add_index "insumos", ["subcontrato_id"], :name => "index_insumos_on_subcontrato_id"
  add_index "insumos", ["unidade_id"], :name => "index_insumos_on_unidade_id"

  create_table "jefedefrentes", :force => true do |t|
    t.integer  "ente_id"
    t.string   "telefono"
    t.string   "movil_1"
    t.string   "movil_2"
    t.string   "mail"
    t.string   "direccion_1"
    t.string   "direccion_2"
    t.string   "foto"
    t.date     "nacimiento"
    t.string   "estado"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "listacategorias", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.integer  "importalista_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "listacategorias", ["importalista_id"], :name => "index_listacategorias_on_importalista_id"

  create_table "listas", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.integer  "unidade_id"
    t.string   "precio_unitario"
    t.integer  "listacategoria_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "listas", ["unidade_id"], :name => "index_listas_on_unidade_id"

  create_table "maestrodeobras", :force => true do |t|
    t.integer  "jefedefrente_id"
    t.integer  "ente_id"
    t.string   "movil"
    t.string   "telefono"
    t.string   "nacimiento"
    t.string   "correo"
    t.string   "foto"
    t.string   "ruc"
    t.string   "banco_1"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "maquinariaequipodetalles", :force => true do |t|
    t.integer  "maquinariaequiporesumene_id"
    t.string   "numero"
    t.string   "parte"
    t.string   "fecha"
    t.string   "horometro_inicio"
    t.string   "horometro_fin"
    t.string   "horometro_horas"
    t.string   "horas_efectivas"
    t.string   "suministro"
    t.string   "combustible"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "maquinariaequipodetalles", ["maquinariaequiporesumene_id"], :name => "index_maquinariaequipodetalles_on_maquinariaequiporesumene_id"

  create_table "maquinariaequiporesumenes", :force => true do |t|
    t.integer  "reportedemaquinaria_id"
    t.integer  "equiposdesubcontrato_id"
    t.string   "nombre_equipo"
    t.string   "unidad"
    t.string   "precio_unitario"
    t.string   "acumulado_anterior_metrado"
    t.string   "acumulado_anterior_monto"
    t.string   "presente_valorizacion_metrado"
    t.string   "presente_valorizacion_monto"
    t.string   "acumulado_actual_metrado"
    t.string   "acumulado_actual_monto"
    t.date     "inicio"
    t.date     "fin"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "maquinariaequipos", :force => true do |t|
    t.string   "nombre"
    t.integer  "reportedemaquinaria_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "maquinariaequipos", ["reportedemaquinaria_id"], :name => "index_maquinariaequipos_on_reportedemaquinaria_id"

  create_table "materiales", :force => true do |t|
    t.string   "descripcion"
    t.string   "unidad"
    t.string   "cantidad"
    t.integer  "partidasdecontrol_id"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "mes", :force => true do |t|
    t.string   "nombre"
    t.integer  "numero"
    t.integer  "anho_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "mes", ["anho_id"], :name => "index_mes_on_anho_id"

  create_table "partedeequipos", :force => true do |t|
    t.integer  "subcontratodeequipo_id"
    t.integer  "equiposdesubcontrato_id"
    t.string   "numero"
    t.string   "fecha"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "inicio"
    t.string   "fin"
    t.string   "diferencia"
    t.string   "combustible_cantidad"
    t.integer  "catalogodetrabajadore_id"
    t.integer  "combustibletipo_id"
    t.string   "stand_by"
    t.string   "mantenimiento"
    t.integer  "aprobado"
  end

  add_index "partedeequipos", ["catalogodetrabajadore_id"], :name => "index_partedeequipos_on_catalogodetrabajadore_id"
  add_index "partedeequipos", ["equiposdesubcontrato_id"], :name => "index_partedeequipos_on_equiposdesubcontrato_id"
  add_index "partedeequipos", ["subcontratodeequipo_id"], :name => "index_partedeequipos_on_subcontratodeequipo_id"

  create_table "partediariodepersonals", :force => true do |t|
    t.string   "numero"
    t.integer  "gruposdetrabajo_id"
    t.date     "fecha"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "aprobado"
  end

  add_index "partediariodepersonals", ["gruposdetrabajo_id"], :name => "index_partediariodepersonals_on_gruposdetrabajo_id"

  create_table "parteobras", :force => true do |t|
    t.string   "numero"
    t.date     "fecha"
    t.integer  "gruposdetrabajo_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "frente_id"
    t.integer  "aprobado"
  end

  add_index "parteobras", ["frente_id"], :name => "index_parteobras_on_frente_id"
  add_index "parteobras", ["gruposdetrabajo_id"], :name => "index_parteobras_on_gruposdetrabajo_id"

  create_table "partidas", :force => true do |t|
    t.integer  "lista_id"
    t.string   "diametro"
    t.string   "serieclase"
    t.string   "profundidad"
    t.integer  "unidade_id"
    t.string   "metrado"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.string   "terreno"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "partidas", ["unidade_id"], :name => "index_partidas_on_unidade_id"

  create_table "partidasdecontrols", :force => true do |t|
    t.integer  "fase_id"
    t.integer  "subfase_id"
    t.integer  "sectore_id"
    t.integer  "subsectore_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "proveedores", :force => true do |t|
    t.integer  "ente_id"
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "movil_1"
    t.string   "movil_2"
    t.string   "cuenta_corriente_1"
    t.string   "cuenta_corriente_2"
    t.string   "cuenta_corriente_3"
    t.string   "cuenta_de_detraccion"
    t.string   "contacto"
    t.string   "ruc"
    t.string   "cci_1"
    t.string   "cci_2"
    t.string   "cci_3"
    t.string   "banco_1"
    t.string   "banco_2"
    t.string   "banco_3"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "reportedeequipos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reportedemaquinarias", :force => true do |t|
    t.string   "nombre_subcontrato"
    t.integer  "subcontratodeequipo_id"
    t.date     "inicio"
    t.date     "fin"
    t.string   "aprobado"
    t.string   "numero_de_valoriacion"
    t.string   "monto_contratado"
    t.string   "adelanto"
    t.string   "amortizacion_acumulada"
    t.string   "saldo"
    t.string   "valorizacion_cantidad"
    t.string   "valorizacion_acumulado_anterior"
    t.string   "valorizacion_acumulado_actual"
    t.string   "amortizacion_adelanto_porcentaje"
    t.string   "amortizacion_adelanto_cantidad"
    t.string   "amortizacion_adelanto_acumulado_anterior"
    t.string   "amortizacion_adelanto_acumulado_actual"
    t.string   "total_facturar_cantidad"
    t.string   "total_facturar_acumulado_anterior"
    t.string   "total_facturar_acumulado_actual"
    t.string   "igv_total_facturar_porcentaje"
    t.string   "igv_total_facturar_cantidad"
    t.string   "igv_total_facturar_acumulado_anterior"
    t.string   "igv_total_facturar_acumulado_actual"
    t.string   "total_incluido_igv_cantidad"
    t.string   "total_incluido_igv_acumulado_anterior"
    t.string   "total_incluido_igv_acumulado_actual"
    t.string   "detraccion_total_porcentaje"
    t.string   "detraccion_total_cantidad"
    t.string   "detraccion_total_acumulado_anterior"
    t.string   "detraccion_total_acumulado_actual"
    t.string   "descuento_combustible_cantidad"
    t.string   "descuento_combustible_acumulado_anterior"
    t.string   "descuento_combustible_acumulado_actual"
    t.string   "descuento_otros_cantidad"
    t.string   "descuento_otros_acumulado_anterior"
    t.string   "descuento_otros_acumulado_actual"
    t.string   "total_retenciones_cantidad"
    t.string   "total_retenciones_acumulado_anterior"
    t.string   "total_retenciones_acumulado_actual"
    t.string   "neto_pagar_cantidad"
    t.string   "neto_pagar_acumulado_anterior"
    t.string   "neto_pagar_acumulado_actual"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "sectores", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "semanas", :force => true do |t|
    t.integer  "numero"
    t.integer  "me_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "semanas", ["me_id"], :name => "index_semanas_on_me_id"

  create_table "subcontratodeequipos", :force => true do |t|
    t.integer  "proveedore_id"
    t.string   "valorizacion"
    t.string   "adelanto"
    t.string   "adelanto_detalle"
    t.string   "condiciones_de_pago"
    t.string   "igv"
    t.string   "fondo_de_garantia"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "amortizacion_inicial_numero"
    t.string   "amortizacion_inicial_porcentaje"
    t.string   "fondo_de_garantia_porcentaje"
    t.string   "detraccion_porcentaje"
    t.string   "adelanto_1_numero"
    t.date     "adelanto_1_fecha"
    t.string   "adelanto_2_numero"
    t.date     "adelanto_2_fecha"
    t.string   "adelanto_3_numero"
    t.date     "adelanto_3_fecha"
    t.string   "adelanto_4_numero"
    t.date     "adelanto_4_fecha"
    t.string   "monto_contratado_suma"
  end

  create_table "subcontratos", :force => true do |t|
    t.integer  "proveedore_id"
    t.string   "valorizacion"
    t.string   "adelanto"
    t.string   "condiciones_de_pago"
    t.string   "igv"
    t.string   "fondo_de_garantia"
    t.string   "adelanto_detalle"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "amortizacion_porcentaje"
    t.string   "amortizacion_numero"
    t.string   "fondo_garantia_porcentaje"
    t.string   "detraccion_total_inicial_porcentaje"
    t.string   "monto_contratado"
    t.string   "adelanto1"
    t.string   "adelanto2"
    t.string   "adelanto3"
    t.string   "adelanto4"
    t.date     "fecha1"
    t.date     "fecha2"
    t.date     "fecha3"
    t.date     "fecha4"
  end

  create_table "subfases", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.integer  "fase_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "subsectores", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.integer  "sectore_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tadeodeobreros", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tareos", :force => true do |t|
    t.date     "inicio"
    t.date     "fin"
    t.integer  "aprobado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tareoscolumnas", :force => true do |t|
    t.integer  "tareosgruposdetrabajo_id"
    t.string   "item"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "tareosfilas", :force => true do |t|
    t.integer  "tareoscolumna_id"
    t.string   "item"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tareosgruposdetrabajos", :force => true do |t|
    t.integer  "tareo_id"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipodedias", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trabajadores", :force => true do |t|
    t.integer  "partediariodepersonal_id"
    t.integer  "catalogodetrabajadore_id"
    t.integer  "catalogocategoriatrabajadore_id"
    t.integer  "partidasdecontrol_id"
    t.string   "normal"
    t.string   "normal_60"
    t.string   "normal_100"
    t.string   "total_horas"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "frente_id"
  end

  add_index "trabajadores", ["catalogocategoriatrabajadore_id"], :name => "index_trabajadores_on_catalogocategoriatrabajadore_id"
  add_index "trabajadores", ["catalogodetrabajadore_id"], :name => "index_trabajadores_on_catalogodetrabajadore_id"
  add_index "trabajadores", ["frente_id"], :name => "index_trabajadores_on_frente_id"
  add_index "trabajadores", ["partediariodepersonal_id"], :name => "index_trabajadores_on_partediariodepersonal_id"
  add_index "trabajadores", ["partidasdecontrol_id"], :name => "index_trabajadores_on_partidasdecontrol_id"

  create_table "unidades", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "valesdeconsumos", :force => true do |t|
    t.string   "numero_vale"
    t.integer  "gruposdetrabajo_id"
    t.string   "tipo_vale"
    t.integer  "proveedore_id"
    t.string   "tipo_material"
    t.float    "cantidad"
    t.date     "fecha_de_ingreso"
    t.integer  "frente_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "valesdeconsumos", ["frente_id"], :name => "index_valesdeconsumos_on_frente_id"
  add_index "valesdeconsumos", ["gruposdetrabajo_id"], :name => "index_valesdeconsumos_on_gruposdetrabajo_id"
  add_index "valesdeconsumos", ["proveedore_id"], :name => "index_valesdeconsumos_on_proveedore_id"

  create_table "valorizaciones", :force => true do |t|
    t.date     "fecha_inicial"
    t.date     "fecha_fin"
    t.string   "subcontratista_nombre"
    t.integer  "subcontrato_id"
    t.string   "monto_contratado"
    t.string   "adelantos"
    t.string   "amortizacion_acumulada"
    t.string   "saldo_por_amortizar"
    t.string   "fondo_de_garantia_acumulada"
    t.string   "actual_valorizacion_actual"
    t.string   "acumulado_anterior_valorizacion_actual"
    t.string   "acumulado_actual_valorizacion_actual"
    t.string   "actual_amortizacion_porcentaje"
    t.string   "actual_amortizacion_numero"
    t.string   "acumulado_anterior_amortizacion_numero"
    t.string   "acumulado_actual_amortizacion_numero"
    t.string   "actual_total"
    t.string   "acumulado_anterior_total"
    t.string   "acumulado_actual_total"
    t.string   "actual_igv_porcentaje"
    t.string   "actual_igv_numero"
    t.string   "acumulado_anterior_igv_numero"
    t.string   "acumulado_actual_igv_numero"
    t.string   "actual_total_incluido_igv"
    t.string   "acumulado_anterior_total_incluido_igv"
    t.string   "acumulado_actual_total_incluido_igv"
    t.string   "actual_retenciones"
    t.string   "acumulado_anterior_retenciones"
    t.string   "acumulado_actual_retenciones"
    t.string   "actual_detraccion_del_total_porcentaje"
    t.string   "actual_detraccion_del_total_numero"
    t.string   "acumulado_anterior_detraccion_del_total_numero"
    t.string   "acumulado_actual_detraccion_del_total_numero"
    t.string   "actual_fondo_garantia_uno_porcentaje"
    t.string   "actual_fondo_garantia_uno_numero"
    t.string   "acumulado_anterior_fondo_garantia_uno_numero"
    t.string   "acumulado_actual_fondo_garantia_uno_numero"
    t.string   "actual_fondo_garantia_dos"
    t.string   "acumulado_anterior_fondo_garantia_dos"
    t.string   "acumulado_actual_fondo_garantia_dos"
    t.string   "actual_descuento_de_equipos"
    t.string   "acumulado_anterior_descuento_de_equipos"
    t.string   "acumulado_actual_descuento_de_equipos"
    t.string   "actual_descuento_de_materiales"
    t.string   "acumulado_anterior_descuento_de_materiales"
    t.string   "acumulado_actual_descuento_de_materiales"
    t.string   "actual_neto_pagar"
    t.string   "acumulado_anterior_neto_pagar"
    t.string   "acumulado_actual_neto_pagar"
    t.integer  "valorizacione_subcontrato_id"
    t.integer  "valorizacione_contador"
    t.integer  "valorizacione_aprobado"
    t.string   "actual_descuento_otros"
    t.string   "acumulado_anterior_descuento_otros"
    t.string   "acumulado_actual_descuento_otros"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "vequipodays", :force => true do |t|
    t.string   "numero_parte"
    t.string   "fecha"
    t.string   "hora_inicio"
    t.string   "hora_fin"
    t.string   "horas_horas"
    t.string   "horas_efectivas"
    t.string   "suministro"
    t.string   "combustible"
    t.integer  "vequipo_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "vequipodays", ["vequipo_id"], :name => "index_vequipodays_on_vequipo_id"

  create_table "vequipos", :force => true do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.string   "unidad"
    t.string   "precio_unitario"
    t.string   "parcial"
    t.integer  "valorizacione_id"
    t.integer  "equiposdesubcontrato_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "vequipos", ["equiposdesubcontrato_id"], :name => "index_vequipos_on_equiposdesubcontrato_id"

  create_table "vmanodeobras", :force => true do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.string   "unidad"
    t.string   "precio_unitario"
    t.string   "parcial"
    t.integer  "valorizacione_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "vpartidas", :force => true do |t|
    t.integer  "valorizacione_id"
    t.string   "codigo"
    t.string   "partida_nombre"
    t.string   "unidad"
    t.string   "cantidad"
    t.string   "precio_unitario"
    t.string   "parcial"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
