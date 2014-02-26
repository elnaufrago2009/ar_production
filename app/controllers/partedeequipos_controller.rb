class PartedeequiposController < ApplicationController
  # GET /partedeequipos
  # GET /partedeequipos.json
  def index
    @combo_opcions = []
    if !params[:partedeequipo_campo].nil? and !params[:partedeequipo_opcion].nil?
      partedeequipo_campo =  params[:partedeequipo_campo].to_i
      partedeequipo_opcion = params[:partedeequipo_opcion]      
      @array_partedeequipos = Partedeequipo.all
      if partedeequipo_campo == 1
        @partedeequipos = Partedeequipo.where('id = ?',partedeequipo_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')        
        @array_partedeequipos.each do |opcion|
          @combo_opcions << [opcion.numero,opcion.id]
        end
      elsif partedeequipo_campo == 2
        @partedeequipos = Partedeequipo.where('subcontratodeequipo_id = ?',partedeequipo_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_partedeequipos.each do |opcion|
          @combo_opcions << ["#{opcion.subcontratodeequipo.proveedore.ente.nombre} #{opcion.subcontratodeequipo.proveedore.ente.apellido} #{opcion.subcontratodeequipo.proveedore.ente.razon_social}",opcion.subcontratodeequipo.id]
        end
      elsif partedeequipo_campo == 3
        @partedeequipos = Partedeequipo.where('equiposdesubcontrato_id = ?',partedeequipo_opcion.to_i).paginate(:page => params[:page], :per_page => 20).order('id Desc')
        @array_partedeequipos.each do |opcion|
          @combo_opcions << ["#{opcion.equiposdesubcontrato.codigo} #{opcion.equiposdesubcontrato.descripcion}",opcion.equiposdesubcontrato.id]
        end
      elsif partedeequipo_campo == 4
        @partedeequipos = Partedeequipo.where('fecha = ?',partedeequipo_opcion).paginate(:page => params[:page], :per_page => 20).order('id Desc')                      
        @array_partedeequipos.each do |opcion|
          @combo_opcions << ["#{opcion.fecha}",opcion.fecha]
        end
      end
      @combo_opcions = elimina_repetidos(@combo_opcions)      
    else
      @partedeequipos = Partedeequipo.paginate(:page => params[:page], :per_page => 20).order('fecha Desc')
    end

    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partedeequipos }
    end
  end

  # GET /partedeequipos/1
  # GET /partedeequipos/1.json
  def show
    @partedeequipo = Partedeequipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partedeequipo }
    end
  end

  # GET /partedeequipos/new
  # GET /partedeequipos/new.json
  def new
    @partedeequipo = Partedeequipo.new

    @partedeequipo_last = Partedeequipo.last
    if @partedeequipo_last.nil?
      @partedeequipo_numero = 0 + 1
    else
      @partedeequipo_numero = @partedeequipo_last.numero.to_i + 1
    end 
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partedeequipo }
    end
  end

  # GET /partedeequipos/1/edit
  def edit
    @partedeequipo = Partedeequipo.find(params[:id])
  end

  # POST /partedeequipos
  # POST /partedeequipos.json
  def create
    @partedeequipo = Partedeequipo.new(params[:partedeequipo])

    respond_to do |format|
      if @partedeequipo.save
        format.html { redirect_to @partedeequipo, notice: 'Partedeequipo was successfully created.' }
        format.json { render json: @partedeequipo, status: :created, location: @partedeequipo }
      else
        format.html { render action: "new" }
        format.json { render json: @partedeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partedeequipos/1
  # PUT /partedeequipos/1.json
  def update
    @partedeequipo = Partedeequipo.find(params[:id])

    respond_to do |format|
      if @partedeequipo.update_attributes(params[:partedeequipo])
        format.html { redirect_to @partedeequipo, notice: 'Partedeequipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partedeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partedeequipos/1
  # DELETE /partedeequipos/1.json
  def destroy
    @partedeequipo = Partedeequipo.find(params[:id])
    @partedeequipo.destroy

    respond_to do |format|
      format.html { redirect_to partedeequipos_url }
      format.json { head :no_content }
    end
  end


  def values_equiposdesubcontrato

    if !params[:id].nil?
      id = params[:id]
      @equiposdesubcontratos = Equiposdesubcontrato.where(subcontratodeequipo_id: id)
    else
      id = 0
      @equiposdesubcontratos = 0
    end   
    
    respond_to do |format|
      format.html {render :layout => 'select'}
    end
  end

  def values_unidades
    if !params[:id].nil?
      id = params[:id] 
      @equiposdesubcontrato = Equiposdesubcontrato.find_by_id(id)
    else

    end

    respond_to do |format|
      format.html {render :layout => 'select'}
    end    

  end


  def values_opcion
    id = params[:id].to_i
    @combo_opcions = []
    if id == 1
      @partedeequipos = Partedeequipo.all
      @partedeequipos.each do |opcion|
        @combo_opcions << [opcion.id,opcion.numero]
      end
    elsif id == 2
      @partedeequipos = Partedeequipo.all
      @partedeequipos.each do |opcion|
        @combo_opcions << [opcion.subcontratodeequipo.id,"#{opcion.subcontratodeequipo.proveedore.ente.nombre} #{opcion.subcontratodeequipo.proveedore.ente.apellido} #{opcion.subcontratodeequipo.proveedore.ente.razon_social}"]        
      end
    elsif id == 3
      @partedeequipos = Partedeequipo.all
      @partedeequipos.each do |opcion|
        @combo_opcions << [opcion.equiposdesubcontrato.id,"#{opcion.equiposdesubcontrato.codigo} #{opcion.equiposdesubcontrato.descripcion}"]        
      end
    elsif id == 4
      @partedeequipos = Partedeequipo.all
      @partedeequipos.each do |opcion|
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
