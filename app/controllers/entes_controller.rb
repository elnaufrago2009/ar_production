class EntesController < ApplicationController
  # GET /entes
  # GET /entes.json
  def index    
    @entes = Ente.paginate(:page => params[:page], :per_page => 20).order('id Desc')



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entes }
    end
  end

  # GET /entes/1
  # GET /entes/1.json
  def show
    @ente = Ente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ente }
    end
  end

  # GET /entes/new
  # GET /entes/new.json
  def new
    @ente = Ente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ente }
    end
  end

  # GET /entes/1/edit
  def edit
    @ente = Ente.find(params[:id])
  end

  # POST /entes
  # POST /entes.json
  def create
    @ente = Ente.new(params[:ente])

    respond_to do |format|
      if @ente.save
        format.html { redirect_to @ente, notice: 'El ente se ha creado correctamente..!' }
        format.json { render json: @ente, status: :created, location: @ente }
      else
        format.html { render action: "new" }
        format.json { render json: @ente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entes/1
  # PUT /entes/1.json
  def update
    @ente = Ente.find(params[:id])

    respond_to do |format|
      if @ente.update_attributes(params[:ente])
        format.html { redirect_to @ente, notice: 'El ente se ha actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entes/1
  # DELETE /entes/1.json
  def destroy
    @ente = Ente.find(params[:id])

    proveedores            =     Proveedore.where('ente_id = ?', params[:id])
    jefesdefrentes         =     Jefedefrente.where('ente_id = ?', params[:id])
    maestrodeobras         =     Maestrodeobra.where('ente_id = ?', params[:id])
    catalogodetrabajadores =     Catalogodetrabajadore.where('ente_id = ?', params[:id])

    proveedores_count      =     proveedores.count
    jefesdefrentes_count   =     jefesdefrentes.count
    maestrodeobras_count   =     maestrodeobras.count
    catalogodetrabajadores_count = catalogodetrabajadores.count
    errores = ''

    if proveedores_count  != 0
      errores = errores + ' proveedores, '      
    end 

    if jefesdefrentes_count != 0
      errores = errores + 'jefesdefrentes, '
    end

    if maestrodeobras_count != 0
      errores = errores + 'maestrodeobras, '
    end

    if catalogodetrabajadores_count != 0
      errores = errores + 'Catalogodetrabajadores.'
    end

    if proveedores_count == 0 && jefesdefrentes_count == 0 && maestrodeobras_count == 0 && catalogodetrabajadores_count == 0
      @ente.destroy
      redirect_to entes_path, notice: "Se han eliminado correctamente el ente."
    else
      redirect_to entes_path, notice: "No se puede eliminar por que el ente tiene dependencia con: #{errores} "
    end
    
  end
end
