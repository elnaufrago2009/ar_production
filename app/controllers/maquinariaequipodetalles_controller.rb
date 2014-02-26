class MaquinariaequipodetallesController < ApplicationController
  # GET /maquinariaequipodetalles
  # GET /maquinariaequipodetalles.json
  def index
    @maquinariaequipodetalles = Maquinariaequipodetalle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maquinariaequipodetalles }
    end
  end

  # GET /maquinariaequipodetalles/1
  # GET /maquinariaequipodetalles/1.json
  def show
    @maquinariaequipodetalle = Maquinariaequipodetalle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maquinariaequipodetalle }
    end
  end

  # GET /maquinariaequipodetalles/new
  # GET /maquinariaequipodetalles/new.json
  def new
    @maquinariaequipodetalle = Maquinariaequipodetalle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maquinariaequipodetalle }
    end
  end

  # GET /maquinariaequipodetalles/1/edit
  def edit
    @maquinariaequipodetalle = Maquinariaequipodetalle.find(params[:id])
  end

  # POST /maquinariaequipodetalles
  # POST /maquinariaequipodetalles.json
  def create
    @maquinariaequipodetalle = Maquinariaequipodetalle.new(params[:maquinariaequipodetalle])

    respond_to do |format|
      if @maquinariaequipodetalle.save
        format.html { redirect_to @maquinariaequipodetalle, notice: 'Maquinariaequipodetalle was successfully created.' }
        format.json { render json: @maquinariaequipodetalle, status: :created, location: @maquinariaequipodetalle }
      else
        format.html { render action: "new" }
        format.json { render json: @maquinariaequipodetalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maquinariaequipodetalles/1
  # PUT /maquinariaequipodetalles/1.json
  def update
    @maquinariaequipodetalle = Maquinariaequipodetalle.find(params[:id])

    respond_to do |format|
      if @maquinariaequipodetalle.update_attributes(params[:maquinariaequipodetalle])
        format.html { redirect_to @maquinariaequipodetalle, notice: 'Maquinariaequipodetalle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maquinariaequipodetalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinariaequipodetalles/1
  # DELETE /maquinariaequipodetalles/1.json
  def destroy
    @maquinariaequipodetalle = Maquinariaequipodetalle.find(params[:id])
    @maquinariaequipodetalle.destroy

    respond_to do |format|
      format.html { redirect_to maquinariaequipodetalles_url }
      format.json { head :no_content }
    end
  end
end
