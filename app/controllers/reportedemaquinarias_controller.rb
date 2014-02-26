class ReportedemaquinariasController < ApplicationController
  # GET /reportedemaquinarias
  # GET /reportedemaquinarias.json
  def index
    @reportedemaquinarias = Reportedemaquinaria.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reportedemaquinarias }
    end
  end

  # GET /reportedemaquinarias/1
  # GET /reportedemaquinarias/1.json
  def show
    @reportedemaquinaria = Reportedemaquinaria.find(params[:id])
    #@maquinariaequipo = Maquinariaequipo.where("reportedemaquinaria_id = ?", @reportedemaquinaria.id).order('id Asc')
    #@maquinariaequiporesumenes = Maquinariaequiporesumene.where("maquinariaequipo_id = ?", @maquinariaequipo[0].id).order('id Asc')

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reportedemaquinaria }
    end
  end

  # GET /reportedemaquinarias/new
  # GET /reportedemaquinarias/new.json
  def new
    @reportedemaquinaria = Reportedemaquinaria.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reportedemaquinaria }
    end
  end

  # GET /reportedemaquinarias/1/edit
  def edit
    @reportedemaquinaria = Reportedemaquinaria.find(params[:id])
  end

  # POST /reportedemaquinarias
  # POST /reportedemaquinarias.json
  def create
    @reportedemaquinaria = Reportedemaquinaria.new(params[:reportedemaquinaria])

    respond_to do |format|
      if @reportedemaquinaria.save
        format.html { redirect_to @reportedemaquinaria, notice: 'Reportedemaquinaria was successfully created.' }
        format.json { render json: @reportedemaquinaria, status: :created, location: @reportedemaquinaria }
      else
        format.html { render action: "new" }
        format.json { render json: @reportedemaquinaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reportedemaquinarias/1
  # PUT /reportedemaquinarias/1.json
  def update
    @reportedemaquinaria = Reportedemaquinaria.find(params[:id])

    respond_to do |format|
      if @reportedemaquinaria.update_attributes(params[:reportedemaquinaria])
        format.html { redirect_to @reportedemaquinaria, notice: 'Reportedemaquinaria was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reportedemaquinaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportedemaquinarias/1
  # DELETE /reportedemaquinarias/1.json
  def destroy
    @reportedemaquinaria = Reportedemaquinaria.find(params[:id])

    inicio = @reportedemaquinaria.inicio.to_date
    fin = @reportedemaquinaria.fin.to_date
    dias_habiles = rango_de_dias_habiles(inicio,fin)
    dias_habiles.each do |dia|
      @partedeequipos = Partedeequipo.where('fecha = ?',dia)
      @partedeequipos.each do |partedeequipo|
        partedeequipo.update_attributes(:aprobado => '')
      end
    end



    @reportedemaquinaria.destroy

    respond_to do |format|
      format.html { redirect_to reportedemaquinarias_url }
      format.json { head :no_content }
    end
  end


  def matriz_reportemaquinarias(inicio, fin, equiposdesubcontrato)
    @dias_habiles = rango_de_dias_habiles(inicio.to_date, fin.to_date)
    temp_matriz_reportemaquinarias = []
    suma_matriz_total_efectivas = 0
    suma_matriz_combustible = 0
    suma_combustible_precio_x_cantidad = 0
    suma_matriz_horas = 0
    recupera_equipodesubcontrato = Equiposdesubcontrato.find_by_id(equiposdesubcontrato)
    nombre_equipodesubcontrato = "#{recupera_equipodesubcontrato.codigo} #{recupera_equipodesubcontrato.descripcion}"
    unidade_equipodesubcontrato = recupera_equipodesubcontrato.unidade.nombre
    precio_equipodesubcontrato = recupera_equipodesubcontrato.precion_sin_igv.to_f
    @dias_habiles.each do |dias_habile|
      fecha  =  dias_habile
      partedeequipo =  Partedeequipo.where("equiposdesubcontrato_id = ? and fecha = ?", equiposdesubcontrato, fecha)
      if partedeequipo.length != 0
        horometro_inicio = partedeequipo[0].inicio.to_f
        horometro_fin = partedeequipo[0].fin.to_f
        horometro_horas = horometro_fin - horometro_inicio
        partedeequipos_numero = partedeequipo[0].numero
        combustibletipo = "#{partedeequipo[0].combustibletipo.tipo} #{partedeequipo[0].combustibletipo.combustible}"
        # sacando Horas Efectivas
        suma_total_horas_efectivas = 0
        suma_efectivas = 0
        combustible_cantidad = partedeequipo[0].combustible_cantidad.to_f
        precio_combustible = partedeequipo[0].combustibletipo.precio.to_f
        combustible_precio_x_cantidad = combustible_cantidad*precio_combustible
        suma_combustible_precio_x_cantidad += combustible_precio_x_cantidad
        partedeequipo[0].equiposregistrados.each{|equiposregistrado| suma_total_horas_efectivas +=  equiposregistrado.cantidad.to_f}

        partedeequipo[0].equiposregistrados.each do |equiposregistrado|
          #suma_efectivas += ((equiposregistrado.cantidad.to_f*combustible_cantidad)/suma_total_horas_efectivas)
          suma_efectivas += equiposregistrado.cantidad.to_f
        end
        suma_matriz_total_efectivas += suma_efectivas
        suma_matriz_combustible += combustible_cantidad
        suma_matriz_horas += horometro_horas
      else
        horometro_inicio = ''
        horometro_fin = ''
        horometro_horas = ''
        partedeequipos_numero = ''
        horas_efectivas = ''
        suma_efectivas = ''
        combustibletipo = ''
        combustible_cantidad = ''
        combustible_precio_x_cantidad = 0
      end

      # matriz de detalle de equipos
      #     [0]                             Fecha
      #     [1]                             horometro_inicio
      #     [2]                             horometro_fin
      #     [3]                             partedeequipos_numero
      #     [4]                             horometro_horas
      #     [5]                             suma_Efectivas
      #     [6]                             combustible_tipo
      #     [7]                             combustible_cantidad  
      #     [8]                             combustible_precio_x_cantidad
      temp_matriz_reportemaquinarias << [fecha.to_date.strftime("%d-%m-%y"), horometro_inicio, horometro_fin, partedeequipos_numero, horometro_horas, suma_efectivas, combustibletipo,combustible_cantidad,combustible_precio_x_cantidad]
    end 
      

    # matriz que se agrega por equipo matriz_reportemaquinarias[0,1,2,3,4,5,6,7]   

    # 
    # [7]             :                     monto                   :             00.00  
    if suma_matriz_total_efectivas == 0
      monto = 0
    else 
      monto = (suma_matriz_total_efectivas * precio_equipodesubcontrato)
    end
    matriz_reportemaquinarias = []

    # matriz_reportemaquinarias [ 0, 1, 2, 3, 4, 5, 6, 7 ]
    # [0]             :               Nombre_Equiposubcontrato
    # [1]             :               suma_matriz_horas
    # [2]             :               suma_matriz_total_efectivas
    # [3]             :               suma_matriz_combustible
    # [4]             :               temp_matriz_reportemaquinarias
    # [5]             :               unidade_equipodesubcontrato
    # [6]             :               precio_equipodesubcontrato
    # [7]             :               monto
    # [8]             :               suma_combustible_precio_x_cantidad
    matriz_reportemaquinarias << [nombre_equipodesubcontrato,suma_matriz_horas,suma_matriz_total_efectivas,suma_matriz_combustible, temp_matriz_reportemaquinarias, unidade_equipodesubcontrato,precio_equipodesubcontrato, monto,suma_combustible_precio_x_cantidad]
    

    return matriz_reportemaquinarias
  end















  def primero
      equiposdesubcontrato_array = []
      equiposdesubcontratos = Equiposdesubcontrato.all
      equiposdesubcontratos.each{|equiposdesubcontrato| equiposdesubcontrato_array << ["#{equiposdesubcontrato.subcontratodeequipo.proveedore.ente.nombre} #{equiposdesubcontrato.subcontratodeequipo.proveedore.ente.apellido} #{equiposdesubcontrato.subcontratodeequipo.proveedore.ente.razon_social} - #{equiposdesubcontrato.codigo} #{equiposdesubcontrato.descripcion}", equiposdesubcontrato.id]}
      @equiposdesubcontrato_array = equiposdesubcontrato_array

      if params[:equiposdesubcontrato].nil? && params[:inicio].nil? && params[:fin].nil?
        @pase = 0
      else

        @equiposdesubcontrato = params[:equiposdesubcontrato]
        @inicio = params[:inicio]
        @fin = params[:fin]

        #0 todos estan vacios
        if params[:equiposdesubcontrato].blank? && params[:inicio].blank? && params[:fin].blank?
          @pase = 2

        #1 equipodesucontrato
        elsif params[:equiposdesubcontrato].present? && params[:inicio].blank? && params[:fin].blank?
          @pase = 2

        #1 inicio
        elsif params[:equiposdesubcontrato].blank? && params[:inicio].present? && params[:fin].blank?
          @pase = 2

        #1 fin 
        elsif params[:equiposdesubcontrato].blank? && params[:inicio].blank? && params[:fin].present?
          @pase = 2

        #2 equipodesubcontrato and inicio
        elsif params[:equiposdesubcontrato].present? && params[:inicio].present? && params[:fin].blank?
          @pase = 2

        #2 equipodesubcontrato and fin
        elsif params[:equiposdesubcontrato].present? && params[:inicio].blank? && params[:fin].present?
          @pase = 2

        #2 inicio and fin
        elsif params[:equiposdesubcontrato].blank? && params[:inicio].present? && params[:fin].present?
          @pase = 2

        #3 equipodesubcontrato and inicio and fin
        elsif params[:equiposdesubcontrato].present? && params[:inicio].present? && params[:fin].present?
          equiposdesubcontrato_id = params[:equiposdesubcontrato]
          inicio = params[:inicio]
          fin = params[:fin]          
          @pase = 1
          @equipodesubcontrato_partes = matriz_reportemaquinarias(inicio, fin, equiposdesubcontrato_id)          
        end
      end
  end

  def rango_de_dias_habiles(inicio, fin)
    dias_habiles = []
    #business_days = 0
    #dates = date2
    while fin >= inicio
      #business_days = business_days + 1 unless dates.sunday?
      dias_habiles << inicio.strftime("%Y-%m-%d")
      inicio = inicio + 1.day
    end
    return dias_habiles
  end

  def matriz_proveedore
    matriz_proveedore = []
    subcontratos = Subcontratodeequipo.all    
    subcontratos.each do |subcontrato|
      nombre_proveedor = "#{subcontrato.proveedore.ente.nombre} #{subcontrato.proveedore.ente.apellido} #{subcontrato.proveedore.ente.razon_social}"
      matriz_proveedore << [nombre_proveedor, subcontrato.id]
    end    
    return matriz_proveedore
  end















  def vc_obtener_lista_equiposdesubcontrato(inicio, fin, subcontratodeequipos_id)

    consulta_ultimo_valorizacion = Reportedemaquinaria.where('subcontratodeequipo_id = ?',subcontratodeequipos_id).order('id Desc')
    if consulta_ultimo_valorizacion.count != 0
      consulta_ultimo_valorizacion_existe = 'existe'      
      @valoriza_acumulado_anterior = consulta_ultimo_valorizacion[0].valorizacion_acumulado_actual
      @total_a_facturar_acumulado_anterior = consulta_ultimo_valorizacion[0].total_facturar_acumulado_actual
      @igv_total_facturar_acumulado_anterior = consulta_ultimo_valorizacion[0].igv_total_facturar_acumulado_actual
      @total_igv_acumulado_anterior = consulta_ultimo_valorizacion[0].total_incluido_igv_acumulado_actual
      @detraccion_del_total_acumulado_anterior = consulta_ultimo_valorizacion[0].detraccion_total_acumulado_actual
      @descuento_combustible_acumulado_anterior = consulta_ultimo_valorizacion[0].descuento_combustible_acumulado_actual
      @descuento_otros_acumulado_anterior = consulta_ultimo_valorizacion[0].descuento_otros_acumulado_actual
      @amortizacion_adelanto_acumulado_anterior = consulta_ultimo_valorizacion[0].amortizacion_adelanto_acumulado_actual
      @neto_pagar_acumulado_anterior = consulta_ultimo_valorizacion[0].neto_pagar_acumulado_actual
    else
      consulta_ultimo_valorizacion_existe = 'noexiste'
      @valoriza_acumulado_anterior = format('%.2f',0)
      @total_a_facturar_acumulado_anterior = format('%.2f',0)
      @igv_total_facturar_acumulado_anterior = format('%.2f',0)
      @total_igv_acumulado_anterior = format('%.2f',0)
      @detraccion_del_total_acumulado_anterior = format('%.2f',0)
      @descuento_combustible_acumulado_anterior = format('%.2f',0)
      @descuento_otros_acumulado_anterior = format('%.2f',0)      
      @amortizacion_adelanto_acumulado_anterior = 0.00
      @neto_pagar_acumulado_anterior = 0.00
    end


    equiposdesubcontratos_seleccionados = Equiposdesubcontrato.where("subcontratodeequipo_id = ?", subcontratodeequipos_id)
    @subcontratodeequipo = Subcontratodeequipo.find_by_id(subcontratodeequipos_id)
    nombre_proveedor = Subcontratodeequipo.find_by_id(subcontratodeequipos_id)
    @nombre_proveedor = "#{nombre_proveedor.proveedore.ente.nombre} #{nombre_proveedor.proveedore.ente.apellido} #{nombre_proveedor.proveedore.ente.razon_social}"
    @subcontratodeequipo_id = nombre_proveedor.id

    matriz_resumen = []
    equiposdesubcontratos_matriz = []

    @valorizacion_matriz = []
    acumulado_anterior_monto_suma = 0
    presente_valorizacion_monto_suma = 0
    acumulado_actual_monto_suma = 0


    valorizacion_suma_total_combustible_precio = 0
      equiposdesubcontratos_seleccionados.each do |equiposdesubcontrato|
      equipodesubcontrato_id = equiposdesubcontrato.id
      nombre = "#{equiposdesubcontrato.id}.-  #{equiposdesubcontrato.codigo} #{equiposdesubcontrato.insumodeequipo.nombre}"
      equipodesubcontrato_partes = matriz_reportemaquinarias(inicio, fin, equiposdesubcontrato.id)
      valorizacion_suma_total_combustible_precio += equipodesubcontrato_partes[0][8].to_f
      equiposdesubcontratos_matriz << [nombre, equipodesubcontrato_partes]

      if consulta_ultimo_valorizacion_existe == 'existe'
           equiposdesubcontrato_id_resumenes = Maquinariaequiporesumene.find_by_equiposdesubcontrato_id(equipodesubcontrato_id)
           if !equiposdesubcontrato_id_resumenes.nil?
              acumulado_anterior_metrado = equiposdesubcontrato_id_resumenes.acumulado_actual_metrado.to_f
              acumulado_anterior_monto = equiposdesubcontrato_id_resumenes.acumulado_actual_monto.to_f
           else
              acumulado_anterior_metrado = 0
              acumulado_anterior_monto = 0
           end        
      else
        acumulado_anterior_metrado = 0
        acumulado_anterior_monto = 0
      end

      presente_valorizacion_metrado = equipodesubcontrato_partes[0][2].round(2)
      presente_valorizacion_monto = equipodesubcontrato_partes[0][7].round(2)
      acumulado_actual_metrado = acumulado_anterior_metrado + presente_valorizacion_metrado
      acumulado_actual_monto = acumulado_anterior_monto + presente_valorizacion_monto


      # [0,1,2,3,4,5,6,7,8,9]

      # [0]       :       equiposdesubcontrato_id                     :               2
      # [1]       :       Nombre del equipo                           :               MIN-5 MINI CARGADOR FRONTAL S/LLANTA 80-90HP
      # [2]       :       Unidad                                      :               hm
      # [3]       :       Precio unitario sin IGV                     :               70.00
      # [4]       :       Acumulado anterior metrado                  :               30.00
      # [5]       :       Acumulado Anterior monto                    :               00.00
      # [6]       :       Presente valorizacion metrado               :               00.00
      # [7]       :       Presente valorizacion monto                 :               00.00
      # [8]       :       Acumulado actual metrado                    :               00.00
      # [9]       :       Acumulado actual monto                      :               00.00
      
      equiposdesubcontrato_id             =         equipodesubcontrato_id   
      nombre_de_equipo                    =         nombre
      unidad                              =         equipodesubcontrato_partes[0][5]
      precio_unitario                     =         format('%.2f',equipodesubcontrato_partes[0][6])
      acumulado_anterior_metrado          =         format('%.2f',acumulado_anterior_metrado)
      acumulado_anterior_monto            =         format('%.2f',acumulado_anterior_monto)
      presente_valorizacion_metrado       =         format('%.2f',presente_valorizacion_metrado)
      presente_valorizacion_monto         =         format('%.2f',presente_valorizacion_monto)
      acumulado_actual_metrado            =         format('%.2f',acumulado_actual_metrado)
      acumulado_actual_monto              =         format('%.2f',acumulado_actual_monto)

      acumulado_anterior_monto_suma +=  acumulado_anterior_monto.to_f
      presente_valorizacion_monto_suma += presente_valorizacion_monto.to_f
      acumulado_actual_monto_suma +=  acumulado_actual_monto.to_f

      matriz_resumen << [equipodesubcontrato_id, nombre_de_equipo,unidad,precio_unitario,acumulado_anterior_metrado,acumulado_anterior_monto,presente_valorizacion_metrado,presente_valorizacion_monto,acumulado_actual_metrado,acumulado_actual_monto]

    end

    @valorizacion_matriz << [presente_valorizacion_monto_suma,acumulado_anterior_monto_suma,acumulado_actual_monto_suma,valorizacion_suma_total_combustible_precio]


    equiposdesubcontratos_matriz << [matriz_resumen, consulta_ultimo_valorizacion_existe]
    return equiposdesubcontratos_matriz
  end


















  def valorizar_consulta
    @proveedores_array = matriz_proveedore

    if params[:subcontratodeequipos_id].nil? && params[:inicio].nil? && params[:fin].nil?
        @pase = 0
      else

        @subcontratodeequipos_id = params[:subcontratodeequipos_id]
        @inicio = params[:inicio].to_date
        @fin = params[:fin].to_date
        subcontratodeequipos_id = params[:subcontratodeequipos_id]
        inicio = params[:inicio].to_date
        fin = params[:fin].to_date


        
        if params[:subcontratodeequipos_id].present? && params[:inicio].present? && params[:fin].present?

          # Comparando si el rango de fechas concuerda
          @valorize_actual = Reportedemaquinaria.where('subcontratodeequipo_id = ?', @subcontratodeequipos_id).last
          @valorize_estado = 0
          if !@valorize_actual.nil?
            if @valorize_actual.fin.to_time < @inicio.to_time
              @valorize_estado = 1
              @pase = 1
            else
              @error_fecha_fin = @valorize_actual.fin
              @valorize_estado = 0
              @pase = 3
            end
          else
            # tiene que valorizar por que es el primero
            @valorize_estado = 1
            @pase = 1
          end
          if @valorize_estado == 1
            @equiposdesubcontratos_seleccionados = vc_obtener_lista_equiposdesubcontrato(inicio, fin,subcontratodeequipos_id)
          end

          
          
          

        #0 todos estan vacios
        elsif params[:subcontratodeequipos_id].blank? && params[:inicio].blank? && params[:fin].blank?
          @pase = 2

        #1 equipodesucontrato
        elsif params[:subcontratodeequipos_id].present? && params[:inicio].blank? && params[:fin].blank?
          @pase = 2

        #1 inicio
        elsif params[:subcontratodeequipos_id].blank? && params[:inicio].present? && params[:fin].blank?
          @pase = 2

        #1 fin 
        elsif params[:subcontratodeequipos_id].blank? && params[:inicio].blank? && params[:fin].present?
          @pase = 2

        #2 equipodesubcontrato and inicio
        elsif params[:subcontratodeequipos_id].present? && params[:inicio].present? && params[:fin].blank?
          @pase = 2

        #2 equipodesubcontrato and fin
        elsif params[:subcontratodeequipos_id].present? && params[:inicio].blank? && params[:fin].present?
          @pase = 2

        #2 inicio and fin
        elsif params[:subcontratodeequipos_id].blank? && params[:inicio].present? && params[:fin].present?
          @pase = 2       
        end

      end    
  end

  def valorizar_consulta_guardar
    @reportedemaquinaria = Reportedemaquinaria.new(params[:reportedemaquinaria])
    inicio = params[:reportedemaquinaria][:inicio].to_date
    fin = params[:reportedemaquinaria][:fin].to_date
    dias_habiles = rango_de_dias_habiles(inicio,fin)
    dias_habiles.each do |dia|
      @partedeequipos = Partedeequipo.where('fecha = ?',dia)
      @partedeequipos.each do |partedeequipo|
        partedeequipo.update_attributes(:aprobado => 1)
      end
    end

    @reportedemaquinaria.save
    redirect_to reportedemaquinarias_path
  end

  def resumen_subcontratista
    subcontratodeequipos_id = params[:subcontratodeequipo_id]
    @inicio = params[:inicio]
    @fin = params[:fin]
    @equiposdesubcontratos_seleccionados = vc_obtener_lista_equiposdesubcontrato(@inicio,@fin,subcontratodeequipos_id)
  end

  def resumen_equipodesubcontrato
    @inicio = params[:inicio]
    @fin = params[:fin]
    @equipodesubcontrato_id = params[:equipodesubcontrato_id].to_i
    @equiposdesubcontratos = matriz_reportemaquinarias(@inicio,@fin,@equipodesubcontrato_id)
  end

  def aprobar
    @reportedemaquinaria = Reportedemaquinaria.find(params[:reportedemaquinaria][:id])
    @reportedemaquinaria.update_attributes(params[:reportedemaquinaria])
    redirect_to "/reportedemaquinarias"
  end

  def ver_resumen_subcontratista
    @maquinariaequiporesumenes = Maquinariaequiporesumene.where('reportedemaquinaria_id = ?', params[:reportedemaquinaria_id])
    @subcontratodeequipo = Subcontratodeequipo.find_by_id(params[:subcontratodeequipo_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maquinariaequiporesumenes }
    end
  end

  def ver_resumen_equipo
    @equipodesubcontrato = Equiposdesubcontrato.find_by_id(params[:equipodesubcontrato_id])
    @maquinariaequipodetalles = Maquinariaequipodetalle.where('maquinariaequiporesumene_id = ?', params[:maquinariaequiporesumene_id])    
  end



end
