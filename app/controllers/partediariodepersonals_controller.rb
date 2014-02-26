class PartediariodepersonalsController < ApplicationController
  # GET /partediariodepersonals
  # GET /partediariodepersonals.json
  def index

    @combo_opcions = []
    if !params[:partediariodepersonal_campo].nil? and !params[:partediariodepersonal_opcion].nil?
      partediariodepersonal_campo =  params[:partediariodepersonal_campo].to_i
      partediariodepersonal_opcion = params[:partediariodepersonal_opcion]
      @array_partediariodepersonals = Partediariodepersonal.all
      if partediariodepersonal_campo == 1
        @partediariodepersonals = Partediariodepersonal.where('id = ?',partediariodepersonal_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_partediariodepersonals.each do |opcion|
          @combo_opcions << [opcion.numero,opcion.id]
        end
      elsif partediariodepersonal_campo == 2
        @partediariodepersonals = Partediariodepersonal.where('gruposdetrabajo_id = ?',partediariodepersonal_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_partediariodepersonals.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social} - 
              #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social} - 
              #{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}",opcion.gruposdetrabajo_id]
        end
      elsif partediariodepersonal_campo == 3
        @partediariodepersonals = Partediariodepersonal.joins(:gruposdetrabajo).where('gruposdetrabajos.subcontrato_id = ?',partediariodepersonal_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_partediariodepersonals.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social}",opcion.gruposdetrabajo.subcontrato.id]
        end
      elsif partediariodepersonal_campo == 4
        @partediariodepersonals = Partediariodepersonal.joins(:gruposdetrabajo).where('gruposdetrabajos.jefedefrente_id = ?',partediariodepersonal_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')                
        @array_partediariodepersonals.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social}",opcion.gruposdetrabajo.jefedefrente.id]
        end
      elsif partediariodepersonal_campo == 5
        @partediariodepersonals = Partediariodepersonal.joins(:gruposdetrabajo).where('gruposdetrabajos.maestrodeobra_id = ?',partediariodepersonal_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_partediariodepersonals.each do |opcion|
          @combo_opcions << ["#{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}",opcion.gruposdetrabajo.maestrodeobra.id]
        end
      elsif partediariodepersonal_campo == 6
        @partediariodepersonals = Partediariodepersonal.where('fecha = ?',partediariodepersonal_opcion).paginate(:page => params[:page], :per_page => 20).order('id Desc')      
        @array_partediariodepersonals.each do |opcion|
          @combo_opcions << ["#{opcion.fecha}",opcion.fecha]
        end
      end      
    else
      @partediariodepersonals = Partediariodepersonal.paginate(:page => params[:page], :per_page => 20).order('id Desc')
    end

    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partediariodepersonals }
    end
  end

  # GET /partediariodepersonals/1
  # GET /partediariodepersonals/1.json
  def show
    @partediariodepersonal = Partediariodepersonal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partediariodepersonal }
    end
  end

  # GET /partediariodepersonals/new
  # GET /partediariodepersonals/new.json
  def new
    @partediariodepersonal = Partediariodepersonal.new      
    @partediariodepersonal_last = Partediariodepersonal.last

    if @partediariodepersonal_last.nil?
      @partediariodepersonal_numero = 0 + 1
    else
      @partediariodepersonal_numero = @partediariodepersonal_last.numero.to_i + 1
    end 
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partediariodepersonal }
    end
  end

  # GET /partediariodepersonals/1/edit
  def edit
    @partediariodepersonal = Partediariodepersonal.find(params[:id])    
  end

  # POST /partediariodepersonals
  # POST /partediariodepersonals.json
  def create
    @partediariodepersonal = Partediariodepersonal.new(params[:partediariodepersonal])

    respond_to do |format|
      if @partediariodepersonal.save
        format.html { redirect_to @partediariodepersonal, notice: 'Partediariodepersonal was successfully created.' }
        format.json { render json: @partediariodepersonal, status: :created, location: @partediariodepersonal }
      else
        format.html { render action: "new" }
        format.json { render json: @partediariodepersonal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partediariodepersonals/1
  # PUT /partediariodepersonals/1.json
  def update
    @partediariodepersonal = Partediariodepersonal.find(params[:id])

    respond_to do |format|
      if @partediariodepersonal.update_attributes(params[:partediariodepersonal])
        format.html { redirect_to @partediariodepersonal, notice: 'Partediariodepersonal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partediariodepersonal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partediariodepersonals/1
  # DELETE /partediariodepersonals/1.json
  def destroy
    @partediariodepersonal = Partediariodepersonal.find(params[:id])
    @partediariodepersonal.destroy

    respond_to do |format|
      format.html { redirect_to partediariodepersonals_url }
      format.json { head :no_content }
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


  def values_opcion
    id = params[:id].to_i
    @combo_opcions = []
    if id == 1
      @parteobras = Partediariodepersonal.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.id,opcion.numero]
      end
    elsif id == 2
      @parteobras = Partediariodepersonal.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo_id,"#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social} - 
              #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social} - 
              #{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}"]
      end
    elsif id == 3
      @parteobras = Partediariodepersonal.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo.subcontrato.id,"#{opcion.gruposdetrabajo.subcontrato.proveedore.ente.nombre} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.apellido} #{opcion.gruposdetrabajo.subcontrato.proveedore.ente.razon_social}"]
      end
    elsif id == 4
      @parteobras = Partediariodepersonal.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo.jefedefrente.id,"#{opcion.gruposdetrabajo.jefedefrente.ente.nombre} #{opcion.gruposdetrabajo.jefedefrente.ente.apellido} #{opcion.gruposdetrabajo.jefedefrente.ente.razon_social}"]
      end
    elsif id == 5
      @parteobras = Partediariodepersonal.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.gruposdetrabajo.maestrodeobra.id,"#{opcion.gruposdetrabajo.maestrodeobra.ente.nombre} #{opcion.gruposdetrabajo.maestrodeobra.ente.apellido} #{opcion.gruposdetrabajo.maestrodeobra.ente.razon_social}"]
      end
    elsif id == 6
      @parteobras = Partediariodepersonal.all
      @parteobras.each do |opcion|
        @combo_opcions << [opcion.fecha,"#{opcion.fecha}"]
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
