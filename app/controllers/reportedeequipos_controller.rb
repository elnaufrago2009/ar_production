class ReportedeequiposController < ApplicationController
  # GET /reportedeequipos
  # GET /reportedeequipos.json
  def index
    @reportedeequipos = Reportedeequipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reportedeequipos }
    end
  end

  # GET /reportedeequipos/1
  # GET /reportedeequipos/1.json
  def show
    @reportedeequipo = Reportedeequipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reportedeequipo }
    end
  end

  # GET /reportedeequipos/new
  # GET /reportedeequipos/new.json
  def new
    @reportedeequipo = Reportedeequipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reportedeequipo }
    end
  end

  # GET /reportedeequipos/1/edit
  def edit
    @reportedeequipo = Reportedeequipo.find(params[:id])
  end

  # POST /reportedeequipos
  # POST /reportedeequipos.json
  def create
    @reportedeequipo = Reportedeequipo.new(params[:reportedeequipo])

    respond_to do |format|
      if @reportedeequipo.save
        format.html { redirect_to @reportedeequipo, notice: 'Reportedeequipo was successfully created.' }
        format.json { render json: @reportedeequipo, status: :created, location: @reportedeequipo }
      else
        format.html { render action: "new" }
        format.json { render json: @reportedeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reportedeequipos/1
  # PUT /reportedeequipos/1.json
  def update
    @reportedeequipo = Reportedeequipo.find(params[:id])

    respond_to do |format|
      if @reportedeequipo.update_attributes(params[:reportedeequipo])
        format.html { redirect_to @reportedeequipo, notice: 'Reportedeequipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reportedeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportedeequipos/1
  # DELETE /reportedeequipos/1.json
  def destroy
    @reportedeequipo = Reportedeequipo.find(params[:id])
    @reportedeequipo.destroy

    respond_to do |format|
      format.html { redirect_to reportedeequipos_url }
      format.json { head :no_content }
    end
  end

  def vakues_combo2_options(idd)
    if idd == 1  
      equiposdesubcontrato_array = []
      equiposdesubcontratos = Equiposdesubcontrato.all
      equiposdesubcontratos.each{|equiposdesubcontrato| equiposdesubcontrato_array << ["#{equiposdesubcontrato.codigo} #{equiposdesubcontrato.descripcion}", equiposdesubcontrato.id]}
      return equiposdesubcontrato_array
    elsif idd == 2
      partedeequipos_array = []
      partedeequipos = Partedeequipo.all
      partedeequipos.each do |partedeequipo|
        operador = Catalogodetrabajadore.find_by_id(partedeequipo.catalogodetrabajadore_id)
        partedeequipos_array << ["#{operador.ente.nombre} #{operador.ente.apellido} #{operador.ente.razon_social}", partedeequipo.catalogodetrabajadore_id]
      end
      reset_principal = 0
      while reset_principal == 0
          i = 0
          imax = partedeequipos_array.count - 1
          reset = 0
          while i <= imax && reset == 0
              k = 0
              repe = 0
              while k <= imax && repe < 2
                  if partedeequipos_array[i][1] == partedeequipos_array[k][1]
                      repe += 1
                  end
                  k += 1
              end
              if repe == 2
                  k = k - 1
                  partedeequipos_array.delete_at(k)
                  reset += 1                      
              end                  
              i += 1
          end          
          if i == partedeequipos_array.count
              reset_principal += 1
          end    
      end
      return partedeequipos_array
    elsif idd == 3

      frentes_array = []
      equiposregistrados = Equiposregistrado.all        
      equiposregistrados.each{|equiporegistrado| frentes_array << ["#{equiporegistrado.gruposdetrabajo.frente.nombre} - #{equiporegistrado.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{equiporegistrado.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{equiporegistrado.gruposdetrabajo.subcontrato.proveedore.ente.razon_social}", equiporegistrado.gruposdetrabajo.frente.id]}
      reset_principal = 0
      while reset_principal == 0
          i = 0
          imax = frentes_array.count - 1
          reset = 0
          while i <= imax && reset == 0
              k = 0
              repe = 0
              while k <= imax && repe < 2
                  if frentes_array[i][1] == frentes_array[k][1]
                      repe += 1
                  end
                  k += 1
              end
              if repe == 2
                  k = k - 1
                  frentes_array.delete_at(k)
                  reset += 1                      
              end                  
              i += 1
          end          
          if i == frentes_array.count
              reset_principal += 1
          end    
      end
      return frentes_array
    elsif idd == 4 

      insumodeequipos_array = []
      equiposdesubcontratos = Equiposdesubcontrato.all
      equiposdesubcontratos.each{|equiposdesubcontrato| insumodeequipos_array << [equiposdesubcontrato.insumodeequipo.nombre, equiposdesubcontrato.insumodeequipo.id]}
      reset_principal = 0
      while reset_principal == 0
          i = 0
          imax = insumodeequipos_array.count - 1
          reset = 0
          while i <= imax && reset == 0
              k = 0
              repe = 0
              while k <= imax && repe < 2
                  if insumodeequipos_array[i][1] == insumodeequipos_array[k][1]
                      repe += 1
                  end
                  k += 1
              end
              if repe == 2
                  k = k - 1
                  insumodeequipos_array.delete_at(k)
                  reset += 1                      
              end                  
              i += 1
          end          
          if i == insumodeequipos_array.count
              reset_principal += 1
          end    
      end
      return insumodeequipos_array      
    end
  end

  def values_combo2
    # si ha seleccionado un id en el combo    
    if !params[:id].nil?
      id = params[:id]
      @items = []
      if id == '1'
        @items = vakues_combo2_options(1)
      elsif id == '2'
        @items = vakues_combo2_options(2)
      elsif id == '3'
        @items = vakues_combo2_options(3)
      elsif id == '4'
        @items = vakues_combo2_options(4)
      end
    end
    respond_to do |format|
      format.html {render :layout => 'select'}
    end
  end


  def obtiene_matriz_cuadro(partedeequipos)
    matriz_uno = []
    partedeequipos.each do |partedeequipo|
      suma_total_horas_efectivas = 0
      partedeequipo.equiposregistrados.each{|equiposregistrado| suma_total_horas_efectivas +=  equiposregistrado.cantidad.to_f }            
      partedeequipo.equiposregistrados.each do |equiposregistrado|
        combustible_cantidad = partedeequipo.combustible_cantidad.to_f
        epc = (equiposregistrado.cantidad.to_f*combustible_cantidad)/suma_total_horas_efectivas
        ratio_consumo_real = epc*equiposregistrado.cantidad.to_i
        matriz_uno << [equiposregistrado.partidasdecontrol.id, equiposregistrado.partidasdecontrol.subfase.descripcion, equiposregistrado.cantidad.to_i, epc.round(2), ratio_consumo_real.round(2), "#{partedeequipo.catalogodetrabajadore.ente.nombre} #{partedeequipo.catalogodetrabajadore.ente.apellido} #{partedeequipo.catalogodetrabajadore.ente.razon_social}"]
      end
    end
    reset_principal = 0
    while reset_principal == 0
        i = 0
        imax = matriz_uno.count - 1
        reset = 0
        while i <= imax && reset == 0
            k = 0
            repe = 0
            while k <= imax && repe < 2
                if matriz_uno[i][0] == matriz_uno[k][0]
                    repe += 1
                end
                k += 1
            end
            if repe == 2
                k = k - 1
                matriz_uno[i][2] += matriz_uno[k][2]
                matriz_uno[i][3] += matriz_uno[k][3]
                matriz_uno[i][4] += matriz_uno[k][4]
                matriz_uno.delete_at(k)
                reset += 1
            end
            i += 1
        end
        if i == matriz_uno.count
            reset_principal += 1
        end
    end
    return matriz_uno
  end

  def obtiene_matriz_cuadro_general(combo2, inicio, fin)
    partedeequipos = Partedeequipo.where('equiposdesubcontrato_id = ? and fecha BETWEEN ? AND ?', combo2, inicio, fin)
    matriz_uno = []
    partedeequipos.each do |partedeequipo|
      suma_total_horas_efectivas = 0
      partedeequipo.equiposregistrados.each{|equiposregistrado| suma_total_horas_efectivas +=  equiposregistrado.cantidad.to_f }      
      partedeequipo.equiposregistrados.each do |equiposregistrado|
        combustible_cantidad = partedeequipo.combustible_cantidad.to_f
        epc = (equiposregistrado.cantidad.to_f*combustible_cantidad)/suma_total_horas_efectivas
        ratio_consumo_real = (epc/equiposregistrado.cantidad.to_i)
        matriz_uno << [equiposregistrado.partidasdecontrol.id, equiposregistrado.partidasdecontrol.subfase.descripcion, equiposregistrado.cantidad.to_i, epc.round(2), ratio_consumo_real.round(2), "#{partedeequipo.equiposdesubcontrato.codigo} #{partedeequipo.equiposdesubcontrato.descripcion}"]
      end
    end
    reset_principal = 0
    while reset_principal == 0
        i = 0
        imax = matriz_uno.count - 1
        reset = 0
        while i <= imax && reset == 0
            k = 0
            repe = 0
            while k <= imax && repe < 2
                if matriz_uno[i][0] == matriz_uno[k][0]
                    repe += 1
                end
                k += 1
            end
            if repe == 2
                k = k - 1
                matriz_uno[i][2] += matriz_uno[k][2]
                matriz_uno[i][3] += matriz_uno[k][3]
                matriz_uno[i][4] += matriz_uno[k][4]                
                matriz_uno.delete_at(k)
                reset += 1
            end
            i += 1
        end
        if i == matriz_uno.count
            reset_principal += 1
        end
    end
    return matriz_uno
  end

  def obtiene_operadores(partedeequipos)
    operadores = []
    partedeequipos.each{|partedeequipo| operadores << [partedeequipo.catalogodetrabajadore_id]}
    reset_principal = 0
    while reset_principal == 0
        i = 0
        imax = operadores.count - 1
        reset = 0
        while i <= imax && reset == 0
            k = 0
            repe = 0
            while k <= imax && repe < 2
                if operadores[i][0] == operadores[k][0]
                    repe += 1
                end
                k += 1
            end
            if repe == 2
                k = k - 1
                operadores.delete_at(k)
                reset += 1
            end
            i += 1
        end
        if i == operadores.count
            reset_principal += 1
        end
    end
    return operadores
  end


  def obtiene_matriz_principal(combo2, inicio, fin)
    array_operadores = []
    partedeequipos = Partedeequipo.where('equiposdesubcontrato_id = ? and fecha BETWEEN ? AND ?', combo2, inicio, fin)
    operadores = obtiene_operadores(partedeequipos)
    operadores.each do |operadore|
      partedeequipos_array = Partedeequipo.where('equiposdesubcontrato_id = ? and fecha BETWEEN ? AND ? and catalogodetrabajadore_id = ?', combo2, inicio, fin, operadore)
      array_operadores << obtiene_matriz_cuadro(partedeequipos_array)
    end
    return array_operadores
  end

  def primero   

    # la primera carga y primer estado todos nulos
    if params[:combo1].nil? && params[:combo2].nil? && params[:inicio].nil? && params[:fin].nil?
      @pase = 0

    else

      combo1 = params[:combo1]
      combo2 = params[:combo2]
      inicio = params[:inicio]
      fin    = params[:fin]

      # pase 0 = primera carga de la pagina web
      # pase 1 = pase para que haga operaciones de calculo
      # pase 2 = error faltan datos para procesar


      #2 combo1, combo2
      if combo1.present? && combo2.present? && inicio.blank? && fin.blank?
        @pase = 1
        @combo1 = combo1
        if combo1 == '1'          
          @combo2_array = vakues_combo2_options(1)
          @combo2 = params[:combo2]
        elsif combo1 == '2'
          @combo2_array = vakues_combo2_options(2)
          @combo2 = params[:combo2]
        elsif combo1 == '3'
          @combo2_array = vakues_combo2_options(3)
          @combo2 = params[:combo2]
        elsif combo1 == '4'
          @combo2_array = vakues_combo2_options(4)
          @combo2 = params[:combo2]
        end           

      #3 combo1, combo2, inicio
      elsif combo1.present? && combo2.present? && inicio.present? && fin.blank?
        @pase = 1
        @combo1 = combo1
        if combo1 == '1'          
          @combo2_array = vakues_combo2_options(1)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
        elsif combo1 == '2'
          @combo2_array = vakues_combo2_options(2)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
        elsif combo1 == '3'
          @combo2_array = vakues_combo2_options(3)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
        elsif combo1 == '4'
          @combo2_array = vakues_combo2_options(4)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
        end

      #3 combo1, combo2, fin
      elsif combo1.present? && combo2.present? && inicio.blank? && fin.present?
        @pase = 1 
        @combo1 = combo1
        firts_parteequipo = Partedeequipo.first
        @array_operadores = []
        if combo1 == '1'
          @combo2_array = vakues_combo2_options(1)
          @combo2 = params[:combo2]
          @fin = params[:fin]
        elsif combo1 == '2'
          @combo2_array = vakues_combo2_options(2)
          @combo2 = params[:combo2]
          @fin = params[:fin]
        elsif combo1 == '3'
          @combo2_array = vakues_combo2_options(3)
          @combo2 = params[:combo2]
          @fin = params[:fin]
        elsif combo1 == '4'
          @combo2_array = vakues_combo2_options(4)
          @combo2 = params[:combo2]
          @fin = params[:fin]
        end

      #4 combo1, combo2, inicio, fin
      elsif combo1.present? && combo2.present? && inicio.present? && fin.present?
        @pase = 1
        @combo1 = combo1
        if combo1 == '1'
          @combo2_array = vakues_combo2_options(1)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
          @fin = params[:fin]
          @array_operadores = obtiene_matriz_principal(combo2, @inicio, @fin)
          @matriz_uno = obtiene_matriz_cuadro_general(combo2, @inicio, @fin)
        elsif combo1 == '2'
          @combo2_array = vakues_combo2_options(2)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
          @fin = params[:fin]

        elsif combo1 == '3'
          @combo2_array = vakues_combo2_options(3)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
          @fin = params[:fin]
        elsif combo1 == '4'
          @combo2_array = vakues_combo2_options(4)
          @combo2 = params[:combo2]
          @inicio = params[:inicio]
          @fin = params[:fin]
        end

      #0 primer estado con variables existentes todos en blanco
      elsif combo1.blank? && combo2.blank? && inicio.blank? && fin.blank?
        @pase = 2

      #1 combo1
      elsif combo1.present? && combo2.blank? && inicio.blank? && fin.blank?
        @pase = 2

      #1 combo2
      elsif combo1.blank? && combo2.present? && inicio.blank? && fin.blank?
        @pase = 2

      #1 inicio
      elsif combo1.blank? && combo2.blank? && inicio.present? && fin.blank?
        @pase = 2

      #1 fin 
      elsif combo1.blank? && combo2.blank? && inicio.blank? && fin.present?
        @pase = 2      

      #2 combo1, inicio
      elsif combo1.present? && combo2.blank? && inicio.present? && fin.blank?
        @pase = 2

      #2 combo1, fin
      elsif combo1.present? && combo2.blank? && inicio.blank? && fin.present?
        @pase = 2

      #2 combo2, inicio
      elsif combo1.blank? && combo2.present? && inicio.present? && fin.blank?
        @pase = 2

      #2 combo2, fin
      elsif combo1.blank? && combo2.present? && inicio.blank? && fin.present?
        @pase = 2

      #2 inicio, fin
      elsif combo1.blank? && combo2.blank? && inicio.present? && fin.present?
        @pase = 2      

      #3 combo2, inicio, fin
      elsif combo1.blank? && combo2.present? && inicio.present? && fin.present?
        @pase = 2

      #3 combo1, inicio, fin
      elsif combo1.present? && combo2.blank? && inicio.present? && fin.present?
        @pase = 2

      end
    end
  end # end primero

end
