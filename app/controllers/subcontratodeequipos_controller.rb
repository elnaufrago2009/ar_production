class SubcontratodeequiposController < ApplicationController
  # GET /subcontratodeequipos
  # GET /subcontratodeequipos.json
  def index
    @subcontratodeequipos = Subcontratodeequipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subcontratodeequipos }
    end
  end

  # GET /subcontratodeequipos/1
  # GET /subcontratodeequipos/1.json
  def show
    @subcontratodeequipo = Subcontratodeequipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subcontratodeequipo }
    end
  end

  # GET /subcontratodeequipos/new
  # GET /subcontratodeequipos/new.json
  def new
    @subcontratodeequipo = Subcontratodeequipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subcontratodeequipo }
    end
  end

  # GET /subcontratodeequipos/1/edit
  def edit
    @subcontratodeequipo = Subcontratodeequipo.find(params[:id])
  end

  # POST /subcontratodeequipos
  # POST /subcontratodeequipos.json
  def create
    @subcontratodeequipo = Subcontratodeequipo.new(params[:subcontratodeequipo])

    respond_to do |format|
      if @subcontratodeequipo.save
        format.html { redirect_to @subcontratodeequipo, notice: 'Subcontratodeequipo was successfully created.'}
        format.json { render json: @subcontratodeequipo, status: :created, location: @subcontratodeequipo }
      else
        format.html { render action: "new" }
        format.json { render json: @subcontratodeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subcontratodeequipos/1
  # PUT /subcontratodeequipos/1.json
  def update
    @subcontratodeequipo = Subcontratodeequipo.find(params[:id])

    respond_to do |format|
      if @subcontratodeequipo.update_attributes(params[:subcontratodeequipo])
        format.html { redirect_to @subcontratodeequipo, notice: 'Subcontratodeequipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subcontratodeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcontratodeequipos/1
  # DELETE /subcontratodeequipos/1.json
  def destroy
    @subcontratodeequipo = Subcontratodeequipo.find(params[:id])
    #@subcontratodeequipo.destroy

    respond_to do |format|
      format.html { redirect_to subcontratodeequipos_url }
      format.json { head :no_content }
    end
  end

  def ver_equipos
    subcontratodeequipos = Subcontratodeequipo.find_by_id(params[:id])
    @subcontratodeequipo = "#{subcontratodeequipos.proveedore.ente.nombre} #{subcontratodeequipos.proveedore.ente.apellido} #{subcontratodeequipos.proveedore.ente.razon_social}"
    @subcontratodeequipo_id = subcontratodeequipos.id
    @equipos = Equiposdesubcontrato.where("subcontratodeequipo_id = ?",params[:id]).order('id Desc')
  end

  def equipoadd
    @subcontratodeequipo = Subcontratodeequipo.find_by_id(params[:id])
  end

  def equipoedit
    @equiposdesubcontrato = Equiposdesubcontrato.find_by_id(params[:id])
  end

  def equipover
    @equiposdesubcontrato = Equiposdesubcontrato.find_by_id(params[:id])
  end
end
