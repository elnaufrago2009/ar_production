Parte::Application.routes.draw do
  
  match 'apgraficos/start' => 'apgraficos#start'
  resources :apgraficos


  resources :tareoscolumnas


  resources :tareosfilas


  resources :tareosgruposdetrabajos


  get 'inicios/index' => 'inicios#index'

  get 'inicios' => 'inicios#index'

  resources :vequipodays


  match 'importalistas/import' => 'importalistas#import'
  resources :importalistas


  resources :vpartidas


  resources :dias


  resources :tipodedias


  resources :semanas


  resources :mes


  resources :anhos


  resources :maquinariaequipodetalles


  resources :maquinariaequiporesumenes


  resources :maquinariaequipos

  match 'reportedemaquinarias/ver_resumen_equipo' => 'reportedemaquinarias#ver_resumen_equipo'
  match 'reportedemaquinarias/ver_resumen_subcontratista' => 'reportedemaquinarias#ver_resumen_subcontratista'
  match 'reportedemaquinarias/aprobar'
  match 'reportedemaquinarias/resumen_equipodesubcontrato'
  match 'reportedemaquinarias/resumen_subcontratista'
  match 'reportedemaquinarias/valorizar_consulta'
  match 'reportedemaquinarias/primero'
  match 'reportedemaquinarias/valorizar_consulta_guardar' => 'reportedemaquinarias#valorizar_consulta_guardar'  
  resources :reportedemaquinarias
  match 'reportedeequipos/values_combo2/:id' => 'reportedeequipos#values_combo2#:id'
  match 'reportedeequipos/primero' => 'reportedeequipos#primero' 
  resources :reportedeequipos
  resources :combustibletipos
  resources :vequipos
  resources :vmanodeobras
  resources :equiposregistrados  
  resources :partedeequipos
  get 'partedeequipos/values_equiposdesubcontrato/:id' => 'partedeequipos#values_equiposdesubcontrato#:id'
  get 'partedeequipos/values_equiposdesubcontrato' => 'partedeequipos#values_equiposdesubcontrato'  
  get 'partedeequipos/values_unidades/:id' => 'partedeequipos#values_unidades#:id'
  get 'partedeequipos/values_unidades' => 'partedeequipos#values_unidades'
  resources :insumodeequipos
  resources :unidades
  resources :equipoincluyes
  post '/equiposdesubcontratos/create' => 'equiposdesubcontratos#create'
  post '/equiposdesubcontratos/update' => 'equiposdesubcontratos#update'
  delete '/equipodesubcontratos/destroy' => 'equipodesubcontratos#destroy'
  match '/equiposdesubcontratos/new/:id' => 'equiposdesubcontratos#new#:id'
  resources :equiposdesubcontratos
  match 'subcontratodeequipos/ver_equipos/:id' => 'subcontratodeequipos#ver_equipos#:id'
  match 'subcontratodeequipos/equipoadd/:id' => 'subcontratodeequipos#equipoadd#:id'
  match 'subcontratodeequipos/equipoedit/:id' => 'subcontratodeequipos#equipoedit#:id'
  get 'subcontratodeequipos/equipover/:id' => 'subcontratodeequipos#equipover#:id'
  resources :subcontratodeequipos
  resources :gruposdetrabajos  
  resources :maestrodeobras
  resources :jefedefrentes
  resources :frentes
  resources :relaciones
  resources :subcategorias
  resources :categorias
  resources :entes
  resources :trabajadores
  resources :catalogodetrabajadores
  resources :catalogocategoriatrabajadores
  get 'partediariodepersonals/values_partidasdecontrol/:id' => 'partediariodepersonals#values_partidasdecontrol#:id'
  resources :partediariodepersonals
  resources :subcontratos
  resources :catalogodeinsumos
  resources :insumos
  resources :proveedores
  resources :valesdeconsumos  
  get 'partidasdecontrols/mostrar/:id' => 'partidasdecontrols#mostrar#:id'
  get 'partidasdecontrols/valuesubfase/:id' => 'partidasdecontrols#valuesubfase#:id'

  get 'parteobras/values_opcion/:id' => 'parteobras#values_opcion#:id'
  get 'partediariodepersonals/values_opcion/:id' => 'partediariodepersonals#values_opcion#:id'
  get 'partedeequipos/values_opcion/:id' => 'partedeequipos#values_opcion#:id'

  get 'parteobras/values_partidasdecontrol/:id' => 'parteobras#values_partidasdecontrol#:id'
  get 'parteobras/values_tipodevale/:id' => 'parteobras#values_tipodevale#:id'
  get 'parteobras/values_tipodevale' => 'parteobras#values_tipodevale'
  get 'parteobras/values_partidaunidad/:id' => 'parteobras#values_partidaunidad#:id'
  resources :partidasdecontrols
  resources :subsectores
  resources :sectores
  get "subfases/migrar"
  resources :subfases
  resources :fases
  resources :descompociciones
  match "listacategorias/importar_partidas" => 'listacategorias#importar_partidas'
  resources :listacategorias

  get "listas/migrar"

  resources :listas do
    collection { match :import }
  end
  resources :equipos
  resources :materiales
  resources :partidas
  resources :parteobras
  root :to => 'inicios#index'
  match 'valorizaciones/equipo_days' => 'valorizaciones#equipo_days'
  match 'valorizaciones/ver_equipodays' => 'valorizaciones#ver_equipodays'
  match 'valorizaciones/ver_valorizacion_manodeobra' => 'valorizaciones#ver_valorizacion_manodeobra'
  match 'valorizaciones/ver_valorizacion_equipos' => 'valorizaciones#ver_valorizacion_equipos'
  match 'valorizaciones/valorizacion_manodeobras' => 'valorizaciones#valorizacion_manodeobras'
  match 'valorizaciones/valorizacion_equipos' => 'valorizaciones#valorizacion_equipos'
  match 'valorizaciones/ver_valorizacion_partidas' => 'valorizaciones#ver_valorizacion_partidas'
  match 'valorizaciones/valorizacion_partidas' => 'valorizaciones#valorizacion_partidas'
  match 'valorizaciones/valorizacion_uno' => 'valorizaciones#valorizacion_uno'
  match 'valorizaciones/produccion_fecha' => 'valorizaciones#produccion_fecha'
  post 'valorizaciones/produccion_procesar' => 'valorizaciones#produccion_procesar'
  match 'valorizaciones/valorizacion_guardar' => 'valorizaciones#valorizacion_guardar'
  post 'valorizaciones/valorizacion_aprobar' => 'valorizaciones#valorizacion_aprobar'
  resources :valorizaciones
  get 'tareos/desaprobar' => 'tareos#desaprobar'
  get 'tareos/aprobar' => 'tareos#aprobar'
  match 'tareos/tareo_semanal' => 'tareos#tareo_semanal'
  match 'tareos/tareo_subcontratista' => 'tareos#tareo_subcontratista'
  match 'tareos/array_subcontratos' => 'tareos#array_subcontratos'
  match 'tareos/tareo_guardar' => 'tareos#tareo_guardar'
  resources :tareos
end
