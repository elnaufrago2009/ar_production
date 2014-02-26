class ParteobrasController < ApplicationController
  # GET /parteobras
  # GET /parteobras.json

  def index
    @combo_opcions = []
    if !params[:parteobra_campo].nil? and !params[:parteobra_opcion].nil?
      parteobra_campo =  params[:parteobra_campo].to_i
      parteobra_opcion = params[:parteobra_opcion]
      @array_parteobras = Parteobra.all

      if parteobra_campo == 1
        @parteobras = Parteobra.where('id = ?',parteobra_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_parteobras.each do |opcion|
          @combo_opcions << [opcion.numero,opcion.id]
        end
      elsif parteobra_campo == 2
        @parteobras = Parteobra.where('frente_id = ?',parteobra_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_parteobras.each do |opcion|
          @combo_opcions << [opcion.frente.nombre,opcion.frente_id]
        end
      elsif parteobra_campo == 3
        @parteobras = Parteobra.joins(:gruposdetrabajo => :jefedefrente).where('jefedefrentes.id = ?',parteobra_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_parteobras.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social}",opcion.gruposdetrabajo.jefedefrente.id]
        end
      elsif parteobra_campo == 4
        @parteobras = Parteobra.joins(:gruposdetrabajo).where('gruposdetrabajos.subcontrato_id = ?',parteobra_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')                
        @array_parteobras.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social}",opcion.gruposdetrabajo.subcontrato.id]
        end
      elsif parteobra_campo == 5
        @parteobras = Parteobra.joins(:gruposdetrabajo).where('gruposdetrabajos.maestrodeobra_id = ?',parteobra_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_parteobras.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}",opcion.gruposdetrabajo.maestrodeobra.id]
        end
      elsif parteobra_campo == 6
        @parteobras = Parteobra.where('fecha = ?',parteobra_opcion).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_parteobras.each do |opcion|
          @combo_opcions << ["#{opcion.fecha}",opcion.fecha]
        end
      elsif parteobra_campo == 7
        @parteobras = Parteobra.where('gruposdetrabajo_id = ?',parteobra_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')        
        @array_parteobras.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social} - #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social} - #{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}",opcion.gruposdetrabajo_id]
        end
      end  
      @combo_opcions = elimina_repetidos(@combo_opcions)    
    else
      @parteobras = Parteobra.paginate(:page => params[:page], :per_page => 20).order('id Desc')
    end
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parteobras }
    end
  end

  # GET /parteobras/1
  # GET /parteobras/1.json
  def show
    @parteobra = Parteobra.find(params[:id])
    respond_to do |format|
      format.html
      #format.pdf do
      #  pdf = Prawn::Document.new
      #  pdf.text "Hola mundo"
      #  send_data pdf.render, type: "application/pdf", disposition: "inline"
      #end
    end
  end

  # GET /parteobras/new
  # GET /parteobras/new.json
  def new
    @parteobra = Parteobra.new
    @listacategorias = Listacategoria.all
    @partidasdecontrols = Partidasdecontrol.all 
    @sectores = Sectore.all

    @parteobra_last = Parteobra.last
    if @parteobra_last.nil?
      @parteobra_numero = 0 + 1
    else
      @parteobra_numero = @parteobra_last.numero.to_i + 1
    end    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parteobra }
    end
  end

  # GET /parteobras/1/edit
  def edit
    @parteobra = Parteobra.find(params[:id])    
    @sectores = Sectore.all
  end

  # POST /parteobras
  # POST /parteobras.json

  def create

    @parteobra = Parteobra.new(params[:parteobra]) 
	  @listacategorias = Listacategoria.all
    @partidasdecontrols = Partidasdecontrol.all 
    @sectores = Sectore.all  

	  respond_to do |format|
      if @parteobra.save
        format.html { redirect_to @parteobra, notice: 'Partida was successfully created.' }
        format.json { render json: @parteobra, status: :created, location: @parteobra }
      else
        format.html { render :action => "new" }
        #format.html { render action: "new", :controller=>"parteobra" }
        format.json { render json: @parteobra.errors, status: :unprocessable_entity }
      end
    end    

  end


  # PUT /parteobras/1
  # PUT /parteobras/1.json
  def update
    @parteobra = Parteobra.find(params[:id])

    respond_to do |format|
      if @parteobra.update_attributes(params[:parteobra])
        format.html { redirect_to @parteobra, notice: 'Parteobra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parteobra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parteobras/1
  # DELETE /parteobras/1.json
  def destroy
    @parteobra = Parteobra.find(params[:id])
    @parteobra.destroy

    respond_to do |format|
      format.html { redirect_to parteobras_url }
      format.json { head :no_content }
    end
  end

  def values_partidaunidad
    @listas = Lista.where(:id => params[:id])
    respond_to do |format|
      format.html {render :layout => 'select'}
    end
  end

  def values_partidasdecontrol
    id = params[:id]
    @grupo = Gruposdetrabajo.find_by_id(id)
    subsectore_id = @grupo[:subsectore_id]    
    @partidasdecontrols = Partidasdecontrol.where(subsectore_id: subsectore_id).all
    respond_to do |format|
      format.html {render :layout => 'select'}
    end
  end

  def values_tipodevale
    if !params[:id].nil?
      id = params[:id]
    else
      id = 'nulo'  
    end    

    if id == 'agregado'
      @values = '
      <option value="arena_para_cama">Arena Para Cama</option>
      <option value="material_de_relleno">Material De Relleno</option>
      <option value="piedra_chancada">Piedra Chancada</option>
      <option value="arena_gruesa">Arena Gruesa</option>
      <option value="arena_fina">Arena Fina</option>'      
    elsif id == 'eliminacion'
      @values = '<option value="eliminacion">Eliminacion</option>' 
    elsif id == 'agua'
      @values = '<option value="agua">Agua</option>'
    elsif id == 'nulo'
      @values = '
      <option value="arena_para_cama">Arena Para Cama</option>
      <option value="material_de_relleno">Material De Relleno</option>
      <option value="piedra_chancada">Piedra Chancada</option>
      <option value="arena_gruesa">Arena Gruesa</option>
      <option value="arena_fina">Arena Fina</option>
      <option value="eliminacion">Eliminacion</option>
      <option value="agua">Agua</option>'
    end                                            

    respond_to do  |format|
      format.html {render :layout => 'select'}
    end    
  end  

  def values_opcion
    id = params[:id].to_i
    @combo_opcions = []
    if id == 1
      @parteobras = Parteobra.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.id,opcion.numero]
      end
    elsif id == 2
      @parteobras = Parteobra.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.frente_id,opcion.frente.nombre]
      end
    elsif id == 3
      @parteobras = Parteobra.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo.jefedefrente.id,"#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social}"]
      end
    elsif id == 4
      @parteobras = Parteobra.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo.subcontrato.id,"#{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social}"]
      end
    elsif id == 5
      @parteobras = Parteobra.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo.maestrodeobra.id,"#{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}"]
      end
    elsif id == 6
      @parteobras = Parteobra.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.fecha,"#{opcion.fecha}"]
      end
    elsif id == 7
      @parteobras = Parteobra.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo_id,"#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social} - #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social} - #{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}"]
      end
    end
    @combo_opcions = elimina_repetidos(@combo_opcions)
    respond_to do  |format|
      format.html {render :layout => 'select'}
    end

  end


  def elimina_repetidos(combo_opcions)
    reset_principal = 0
    while reset_principal == 0
        i = 0
        imax = combo_opcions.count - 1
        reset = 0
        while i <= imax && reset == 0
            k = 0
            repe = 0
            while k <= imax && repe < 2
                if combo_opcions[i][0] == combo_opcions[k][0]
                    repe += 1
                end
                k += 1
            end
            if repe == 2
                k = k - 1
                combo_opcions.delete_at(k)
                reset += 1
            end
            i += 1
        end
        if i == combo_opcions.count
            reset_principal += 1
        end
    end
    return combo_opcions
  end


end
