class EquiposregistradosController < ApplicationController
  # GET /equiposregistrados
  # GET /equiposregistrados.json
  def index    
    @equiposregistrados = Equiposregistrado.paginate(:page => params[:page], :per_page => 20).order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equiposregistrados }
    end
  end

  # GET /equiposregistrados/1
  # GET /equiposregistrados/1.json
  def show
    @equiposregistrado = Equiposregistrado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equiposregistrado }
    end
  end

  # GET /equiposregistrados/new
  # GET /equiposregistrados/new.json
  def new
    @equiposregistrado = Equiposregistrado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equiposregistrado }
    end
  end

  # GET /equiposregistrados/1/edit
  def edit
    @equiposregistrado = Equiposregistrado.find(params[:id])
  end

  # POST /equiposregistrados
  # POST /equiposregistrados.json
  def create
    @equiposregistrado = Equiposregistrado.new(params[:equiposregistrado])

    respond_to do |format|
      if @equiposregistrado.save
        format.html { redirect_to @equiposregistrado, notice: 'Equiposregistrado was successfully created.' }
        format.json { render json: @equiposregistrado, status: :created, location: @equiposregistrado }
      else
        format.html { render action: "new" }
        format.json { render json: @equiposregistrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equiposregistrados/1
  # PUT /equiposregistrados/1.json
  def update
    @equiposregistrado = Equiposregistrado.find(params[:id])

    respond_to do |format|
      if @equiposregistrado.update_attributes(params[:equiposregistrado])
        format.html { redirect_to @equiposregistrado, notice: 'Equiposregistrado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equiposregistrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equiposregistrados/1
  # DELETE /equiposregistrados/1.json
  def destroy
    @equiposregistrado = Equiposregistrado.find(params[:id])
    @equiposregistrado.destroy

    respond_to do |format|
      format.html { redirect_to equiposregistrados_url }
      format.json { head :no_content }
    end
  end
end
