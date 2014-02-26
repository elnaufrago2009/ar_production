class EquiposdesubcontratosController < ApplicationController
  # GET /equiposdesubcontratos
  # GET /equiposdesubcontratos.json
  def index
    @equiposdesubcontratos = Equiposdesubcontrato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equiposdesubcontratos }
    end
  end

  # GET /equiposdesubcontratos/1
  # GET /equiposdesubcontratos/1.json
  def show
    @equiposdesubcontrato = Equiposdesubcontrato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equiposdesubcontrato }
    end
  end

  # GET /equiposdesubcontratos/new
  # GET /equiposdesubcontratos/new.json
  def new
    @equiposdesubcontrato = Equiposdesubcontrato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equiposdesubcontrato }
    end
  end

  # GET /equiposdesubcontratos/1/edit
  def edit
    @equiposdesubcontrato = Equiposdesubcontrato.find(params[:id])
  end

  # POST /equiposdesubcontratos
  # POST /equiposdesubcontratos.json
  def create
    @equiposdesubcontrato = Equiposdesubcontrato.new(params[:equiposdesubcontrato])

    respond_to do |format|
      if @equiposdesubcontrato.save

        # monto_contratado_suma subcontratodeequipo
        parcial = params[:equiposdesubcontrato][:cantidad_contratada].to_f * params[:equiposdesubcontrato][:precion_sin_igv].to_f
        @subcontratodeequipo = Subcontratodeequipo.find(params[:equiposdesubcontrato][:subcontratodeequipo_id])
        monto_contratado_suma = @subcontratodeequipo.monto_contratado_suma.to_f + parcial        
        @subcontratodeequipo.update_attributes(:monto_contratado_suma => "#{monto_contratado_suma}")
        
        format.html { redirect_to "/subcontratodeequipos/ver_equipos/#{params[:equiposdesubcontrato][:subcontratodeequipo_id]}" }
        format.json { render json: @equiposdesubcontrato, status: :created, location: @equiposdesubcontrato }
      else
        format.html { render action: "new" }
        @equiposdesubcontrato[:subcontratodeequipo_id] = params[:equiposdesubcontrato][:subcontratodeequipo_id] 
        format.json { render :json => @equiposdesubcontrato.errors }
      end
    end


  end


  # PUT /equiposdesubcontratos/1
  # PUT /equiposdesubcontratos/1.json
  def update
    @equiposdesubcontrato = Equiposdesubcontrato.find(params[:id])
    @subcontratodeequipo = Subcontratodeequipo.find(params[:equiposdesubcontrato][:subcontratodeequipo_id])        
    anterior_cantidad_contratada = @equiposdesubcontrato.cantidad_contratada.to_f
    anterior_cantidad_precio_sin_igv = @equiposdesubcontrato.precion_sin_igv.to_f
    anterior_parcial = anterior_cantidad_contratada * anterior_cantidad_precio_sin_igv
    actual_cantidad_contratada = params[:equiposdesubcontrato][:cantidad_contratada].to_f
    actual_cantidad_precio_sin_igv = params[:equiposdesubcontrato][:precion_sin_igv].to_f
    actual_parcial = actual_cantidad_contratada * actual_cantidad_precio_sin_igv
    monto_contratado = @subcontratodeequipo.monto_contratado_suma.to_f

    monto_contratado = monto_contratado - anterior_parcial
    monto_contratado = monto_contratado + actual_parcial
        
    

    respond_to do |format|
      if @equiposdesubcontrato.update_attributes(params[:equiposdesubcontrato])
        @subcontratodeequipo.update_attributes(:monto_contratado_suma => "#{monto_contratado}")
        format.html { redirect_to "/subcontratodeequipos/ver_equipos/#{params[:equiposdesubcontrato][:subcontratodeequipo_id]}"}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equiposdesubcontrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equiposdesubcontratos/1
  # DELETE /equiposdesubcontratos/1.json
  def destroy
    @equiposdesubcontrato = Equiposdesubcontrato.find(params[:equipodesubcontrato_id])
    cantidad_contratada = @equiposdesubcontrato.cantidad_contratada.to_f
    cantidad_precio_sin_igv = @equiposdesubcontrato.precion_sin_igv.to_f
    parcial = cantidad_contratada * cantidad_precio_sin_igv
    @subcontratodeequipo = Subcontratodeequipo.find(@equiposdesubcontrato.subcontratodeequipo_id)
    monto_contratado = @subcontratodeequipo.monto_contratado_suma.to_f
    monto_contratado = monto_contratado - parcial

    @partedeequipos = Partedeequipo.where('equiposdesubcontrato_id = ?',params[:equipodesubcontrato_id])
    @partedeequipos_count = @partedeequipos.count


    # eliminacion
    if @partedeequipos_count.to_i == 0
      @subcontratodeequipo.update_attributes(:monto_contratado_suma => "#{monto_contratado}")
      @equiposdesubcontrato.destroy
      redirect_to "/subcontratodeequipos/ver_equipos/#{params[:subcontratodeequipo_id]}"
    else
      redirect_to "/subcontratodeequipos/ver_equipos/#{@subcontratodeequipo.id}?error=1"
    end # end Eliminacion
    
    
  end
end
